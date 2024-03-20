import 'dart:math';
import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/tx_auxiliary_data_supplement.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

class CardanoSignTransactionOperation extends ComplexLedgerOperation<Uint8List> {
  final ParsedTransaction transaction;
  final TransactionSigningMode signingMode;
  final List<List<int>> witnessPaths;
  final ParsedTransactionOptions options;
  final CardanoVersion cardanoVersion;

  const CardanoSignTransactionOperation({
    required this.transaction,
    required this.signingMode,
    required this.witnessPaths,
    required this.options,
    required this.cardanoVersion,
  });

  @override
  Future<Uint8List> invoke(LedgerSendFct send) async {
    await signTx_init(send);
    await signTx_addInputs(send);

    // final signature = await signTx_finish(send);

    // return signature;
  }

  Future<void> signTx_init(LedgerSendFct send) async {
    final data =
        SerializationUtils.serializeTxInit(transaction, signingMode, witnessPaths.length, options, cardanoVersion);

    await send(
      SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageInit,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: 'Sign Transaction Init',
      ),
    );
  }

  Future<void> signTx_addInputs(LedgerSendFct send) async {
    for (final input in transaction.inputs) {
      final data = SerializationUtils.serializeTxInput(input);

      await send(
        SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageInputs,
          p2: p2Unused,
          data: data,
          prependDataLength: true,
          debugName: 'Sign Transaction Add Inputs',
        ),
      );
    }
  }

  Future<TxAuxiliaryDataSupplement?> signTx_setAuxiliaryData(
    ParsedTxAuxiliaryData auxiliaryData,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    // Before executing the check, ensure auxiliaryData is of a specific type
    if (!(auxiliaryData is CIP36Registration || auxiliaryData is ArbitraryHash)) {
      throw ValidationException('Auxiliary data type not implemented');
    }

    // Serialize and send auxiliary data
    final serializedAuxData = SerializationUtils.serializeTxAuxiliaryData(auxiliaryData);
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageAuxData,
      p2: p2Unused,
      data: serializedAuxData,
      prependDataLength: true,
      debugName: 'Sign Transaction Set Auxiliary Data',
    ));

    if (auxiliaryData is CIP36Registration) {
      final params = auxiliaryData.params;

      if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
        final serializedInitData = SerializationUtils.serializeCVoteRegistrationInit(params);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2Init,
          data: serializedInitData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Init',
        ));
      }

      if (params.votePublicKey != null || params.votePublicKeyPath != null) {
        final serializedVoteKeyData = SerializationUtils.serializeCVoteRegistrationVoteKey(
            params.votePublicKey, params.votePublicKeyPath, version);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2VoteKey,
          data: serializedVoteKeyData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Vote Key',
        ));
      }

      if (params.delegations != null) {
        for (final delegation in params.delegations!) {
          final serializedDelegationData = SerializationUtils.serializeCVoteRegistrationDelegation(delegation);
          await send(SendOperation(
            ins: InstructionType.signTransaction.insValue,
            p1: p1StageAuxData,
            p2: p2Delegation,
            data: serializedDelegationData,
            prependDataLength: true,
            debugName: 'Sign Transaction Set CVote Registration Delegation',
          ));
        }
      }

      final serializedStakingKeyData = SerializationUtils.serializeCVoteRegistrationStakingPath(params.stakingPath);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2StakingKey,
        data: serializedStakingKeyData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Staking Key',
      ));

      final serializedPaymentAddressData =
          SerializationUtils.serializeCVoteRegistrationPaymentDestination(params.paymentDestination, version);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2PaymentAddress,
        data: serializedPaymentAddressData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Payment Address',
      ));
      final serializedNonceData = SerializationUtils.serializeCVoteRegistrationNonce(params.nonce);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2Nonce,
        data: serializedNonceData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Nonce',
      ));

      if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
        final serializedVotingPurposeData =
            SerializationUtils.serializeCVoteRegistrationVotingPurpose(params.votingPurpose);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2VotingPurpose,
          data: serializedVotingPurposeData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Voting Purpose',
        ));
      }

      // Confirm and receive the auxiliary data hash and signature
      final response = await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2Confirm,
        data: Uint8List(0), // Sending an empty payload for confirmation
        prependDataLength: true,
        debugName: 'Sign Transaction Confirm and Receive CVote Registration Hash and Signature',
      ));

      // Assuming the response format is as expected, extract the auxiliary data hash and signature
      if (response.remainingLength != auxiliaryDataHashLength + ed25519SignatureLength) {
        throw Exception('Unexpected response length for auxiliary data hash and signature');
      }

      final auxDataHash = response.read(auxiliaryDataHashLength);
      final signature = response.read(ed25519SignatureLength);

      // Convert the byte data to hex strings (assuming hex utility functions are available)
      final auxDataHashHex = hex.encode(auxDataHash);
      final signatureHex = hex.encode(signature);

      return TxAuxiliaryDataSupplement(
        type: TxAuxiliaryDataSupplementType.cip36Registration,
        auxiliaryDataHashHex: auxDataHashHex,
        cip36VoteRegistrationSignatureHex: signatureHex,
      );
    }

    return null;
  }

  Future<void> signTx_addOutput_sendChunks(String hexString, int p2, LedgerSendFct send) async {
    var start = maxChunkSize * 2;

    while (start < hexString.length) {
      final end = min(hexString.length, start + maxChunkSize * 2);
      final chunk = hexString.substring(start, end);

      await send(
        SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageOutputs,
          p2: p2,
          data: Uint8List.fromList([
            ...Uint32List.fromList([chunk.length ~/ 2]).buffer.asUint8List(),
            ...hex.decode(chunk),
          ]),
          prependDataLength: true,
          debugName: 'Sign Transaction Add Output Chunk',
        ),
      );
      start = end;
    }
  }
}