part of "../cardano_sign_transaction_operation.dart";

extension _SignTransactionV8 on CardanoSignTransactionOperation {
  Future<SignedTransactionData> _invokeV8(LedgerSendFct send) async {
    final witnessPaths = gatherWitnessPaths(signingRequest);

    final rawTxBody = SerializationV8.serializeV8RawTxBody(
      tx: signingRequest.tx,
      version: cardanoVersion,
      network: network,
    );

    if (rawTxBody.length > 0xFFFF) {
      throw LedgerCardanoValidationException(
        "Transaction body too large for v8 protocol: ${rawTxBody.length} bytes (max 65535)",
      );
    }

    await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.signTransaction.insValue,
        p1: p1V8SignTxInit,
        p2: p2Unused,
        data: SerializationV8.serializeV8TxInit(
          tx: signingRequest.tx,
          signingMode: signingRequest.signingMode,
          numWitnesses: witnessPaths.length,
          options: signingRequest.options,
          rawTxTotalLength: rawTxBody.length,
        ),
        prependDataLength: true,
        debugName: "Sign Transaction V8 Init",
      ),
    );

    TxAuxiliaryDataSupplement? auxiliaryDataSupplement;
    final auxiliaryData = signingRequest.tx.auxiliaryData;
    if (auxiliaryData is CIP36Registration) {
      auxiliaryDataSupplement = await _signTxV8AuxData(auxiliaryData.params, send);
    }

    int offset = 0;
    String txHashHex = '';
    while (offset < rawTxBody.length) {
      final end = min(rawTxBody.length, offset + maxV8TxChunkSize);
      final isLast = end == rawTxBody.length;
      final chunk = rawTxBody.sublist(offset, end);

      if (isLast) {
        final response = await send(
          LedgerSimpleOperation(
            cla: claCardano,
            ins: InstructionType.signTransaction.insValue,
            p1: p1V8SignTxConfirm,
            p2: p2Unused,
            data: chunk,
            prependDataLength: true,
            debugName: "Sign Transaction V8 Confirm",
          ),
        );
        if (response.remainingLength != txHashLength) {
          throw LedgerCardanoSdkInternalException(
            "_invokeV8: Unexpected response length for transaction hash",
          );
        }
        txHashHex = hex.encode(response.read(response.remainingLength));
      } else {
        await send(
          LedgerSimpleOperation(
            cla: claCardano,
            ins: InstructionType.signTransaction.insValue,
            p1: p1V8SignTxChunk,
            p2: p2Unused,
            data: chunk,
            prependDataLength: true,
            debugName: "Sign Transaction V8 Chunk",
          ),
        );
      }

      offset = end;
    }

    final witnesses = <Witness>[];
    for (final path in witnessPaths) {
      witnesses.add(await _signTxGetWitness(path, send));
    }

    return SignedTransactionData(
      txHashHex: txHashHex,
      witnesses: witnesses,
      auxiliaryDataSupplement: auxiliaryDataSupplement,
    );
  }

  Future<TxAuxiliaryDataSupplement> _signTxV8AuxData(
    ParsedCVoteRegistrationParams params,
    LedgerSendFct send,
  ) async {
    final delegations = params.delegations;
    final hasDelegations = delegations != null && delegations.isNotEmpty;

    final initData = SerializationV8.serializeV8CVoteAuxDataInit(
      params: params,
      version: cardanoVersion,
      network: network,
    );

    if (!hasDelegations) {
      final response = await send(
        LedgerSimpleOperation(
          cla: claCardano,
          ins: InstructionType.signTransaction.insValue,
          p1: p1V8SignTxAuxData,
          p2: p2V8AuxDataInit,
          data: initData,
          prependDataLength: true,
          debugName: "Sign Transaction V8 AuxData Init",
        ),
      );
      if (response.remainingLength != auxiliaryDataHashLength + ed25519SignatureLength) {
        throw LedgerCardanoSdkInternalException(
          "_signTxV8AuxData: Unexpected response length for auxiliary data",
        );
      }
      return TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: hex.encode(response.read(auxiliaryDataHashLength)),
        cip36VoteRegistrationSignatureHex: hex.encode(response.read(ed25519SignatureLength)),
      );
    }

    await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.signTransaction.insValue,
        p1: p1V8SignTxAuxData,
        p2: p2V8AuxDataInit,
        data: initData,
        prependDataLength: true,
        debugName: "Sign Transaction V8 AuxData Init",
      ),
    );

    for (int i = 0; i < delegations.length; i++) {
      final isLast = i == delegations.length - 1;
      final delegationData = SerializationV8.serializeV8CVoteAuxDataDelegation(delegations[i]);

      if (isLast) {
        final response = await send(
          LedgerSimpleOperation(
            cla: claCardano,
            ins: InstructionType.signTransaction.insValue,
            p1: p1V8SignTxAuxData,
            p2: p2V8AuxDataDelegation,
            data: delegationData,
            prependDataLength: true,
            debugName: "Sign Transaction V8 AuxData Delegation",
          ),
        );
        if (response.remainingLength != auxiliaryDataHashLength + ed25519SignatureLength) {
          throw LedgerCardanoSdkInternalException(
            "_signTxV8AuxData: Unexpected response length for auxiliary data",
          );
        }
        return TxAuxiliaryDataSupplement(
          auxiliaryDataHashHex: hex.encode(response.read(auxiliaryDataHashLength)),
          cip36VoteRegistrationSignatureHex: hex.encode(response.read(ed25519SignatureLength)),
        );
      } else {
        await send(
          LedgerSimpleOperation(
            cla: claCardano,
            ins: InstructionType.signTransaction.insValue,
            p1: p1V8SignTxAuxData,
            p2: p2V8AuxDataDelegation,
            data: delegationData,
            prependDataLength: true,
            debugName: "Sign Transaction V8 AuxData Delegation",
          ),
        );
      }
    }

    throw StateError("unreachable");
  }
}
