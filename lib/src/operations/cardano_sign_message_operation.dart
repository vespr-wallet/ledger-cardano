import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../utils/serialization_utils.dart";

class CardanoSignMessageOperation extends LedgerComplexOperation<SignedMessageData> {
  final ParsedMessageData msgData;
  final CardanoVersion version;
  final CardanoNetwork network;

  const CardanoSignMessageOperation({
    required this.msgData,
    required this.version,
    required this.network,
  });

  LedgerSimpleOperation _createSendOperation({
    required int p1,
    required Uint8List data,
  }) {
    return LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.signMessage.insValue,
      p1: p1,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: "Sign Message",
    );
  }

  @override
  Future<SignedMessageData> invoke(LedgerSendFct send) async {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsMessageSigning) {
      throw LedgerCardanoVersionNotSupported(
        message: "CIP-8 message signing",
        wantedVersion: "7.1.0",
        era: "Conway",
      );
    }

    if (version.versionMajor >= 8) return _invokeV8(send);
    return _invokeV7(send);
  }

  // P1 values (shared)
  static const int _p1StageInit = 0x01;
  static const int _p1StageChunk = 0x02;
  static const int _p1StageConfirm = 0x03;

  Uint8List _buildChunkData(List<int> msgBytes, int start, int end) {
    final chunk = msgBytes.sublist(start, end);
    return Uint8List.fromList([
      ...SerializationUtils.serializeUint32(chunk.length),
      ...chunk,
    ]);
  }

  Future<SignedMessageData> _readConfirmResponse(LedgerSendFct send) async {
    final confirmResponse = await send(
      _createSendOperation(p1: _p1StageConfirm, data: Uint8List(0)),
    );

    final signatureHex = hex.encode(confirmResponse.read(ed25519SignatureLength));
    final signingPublicKeyHex = hex.encode(confirmResponse.read(publicKeyLength));

    final addressFieldSizeBuf = confirmResponse.read(4);
    final addressFieldSize =
        (addressFieldSizeBuf[0] << 24) |
        (addressFieldSizeBuf[1] << 16) |
        (addressFieldSizeBuf[2] << 8) |
        addressFieldSizeBuf[3];
    final addressFieldHex = hex.encode(confirmResponse.read(addressFieldSize));

    return SignedMessageData(
      signatureHex: signatureHex,
      signingPublicKeyHex: signingPublicKeyHex,
      addressFieldHex: addressFieldHex,
      signatureType: msgData.hashPayload ? DataSignatureType.payload_black2b_hash_28_bytes : DataSignatureType.paylod,
    );
  }

  Future<SignedMessageData> _invokeV7(LedgerSendFct send) async {
    await send(
      _createSendOperation(
        p1: _p1StageInit,
        data: SerializationV7.serializeV7MessageDataInit(
          version: version,
          msgData: msgData,
          network: network,
        ),
      ),
    );

    // CHUNK
    final msgBytes = hex.decode(msgData.messageHex);

    Uint8List getChunkData(int start, int end) {
      final chunk = msgBytes.sublist(start, end);
      return Uint8List.fromList([
        ...SerializationUtils.serializeUint32(chunk.length),
        ...chunk,
      ]);
    }

    final firstChunkSize = msgData.isAscii ? maxCIP8MessageFirstChunkAsciiSize : maxCIP8MessageFirstChunkHexSize;

    int start = 0;
    int end = msgBytes.length < firstChunkSize ? msgBytes.length : firstChunkSize;

    await send(
      _createSendOperation(
        p1: p1StageChunk,
        data: getChunkData(start, end),
      ),
    );
    start = end;

    if (start < msgBytes.length) {
      // non-hashed messages must be processed in a single APDU
      if (!msgData.hashPayload) {
        throw LedgerCardanoValidationException("MESSAGE_DATA_LONG_NON_HASHED_MSG");
      }
    }

    while (start < msgBytes.length) {
      end = msgBytes.length < start + maxCIP8MessageHiddenChunkSize
          ? msgBytes.length
          : start + maxCIP8MessageHiddenChunkSize;

      await send(
        _createSendOperation(
          p1: p1StageChunk,
          data: getChunkData(start, end),
        ),
      );

      start = end;
    }

    return _readConfirmResponse(send);
  }

  Future<SignedMessageData> _invokeV8(LedgerSendFct send) async {
    await send(
      _createSendOperation(
        p1: _p1StageInit,
        data: SerializationV8.serializeV8MessageDataInit(
          version: version,
          msgData: msgData,
          network: network,
        ),
      ),
    );

    final msgBytes = hex.decode(msgData.messageHex);

    // v8: all chunks use a single uniform size — min(remaining, maxCIP8MessageHiddenChunkSize)
    int start = 0;
    while (start < msgBytes.length) {
      final end = msgBytes.length < start + maxCIP8MessageHiddenChunkSize
          ? msgBytes.length
          : start + maxCIP8MessageHiddenChunkSize;
      await send(_createSendOperation(p1: _p1StageChunk, data: _buildChunkData(msgBytes, start, end)));
      start = end;
    }

    return _readConfirmResponse(send);
  }
}
