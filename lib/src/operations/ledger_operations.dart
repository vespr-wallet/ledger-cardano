import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SendOperation extends LedgerOperation<ByteDataReader> {
  final String debugName;

  final int ins;
  final int p1;
  final int p2;
  final Uint8List data;
  final bool prependDataLength;

  SendOperation({
    required this.ins,
    required this.p1,
    required this.p2,
    required this.data,
    this.prependDataLength = true,
    required this.debugName,
  });

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) => ValidationException.runSafely(() async {
        writer.writeUint8(claCardano);
        writer.writeUint8(ins);
        writer.writeUint8(p1);
        writer.writeUint8(p2);
        if (prependDataLength) {
          writer.writeUint8(data.length);
        }
        if (data.isNotEmpty) {
          writer.write(data);
        }

        if (CardanoLedgerApp.debugPrintEnabled) {
          print("$debugName: ${hex.encode(writer.toBytes())}");
        }
        return [writer.toBytes()];
      });

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async => reader;
}

class ResetOperation extends LedgerOperation<ByteDataReader> {
  ResetOperation();

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) => ValidationException.runSafely(() async {
        if (CardanoLedgerApp.debugPrintEnabled) {
          print("ResetOperation command sent to ledger");
        }
        writer.writeUint8(claCardano);
        return [writer.toBytes()];
      });

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async => reader;
}
