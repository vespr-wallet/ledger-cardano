part of '../serialization_utils.dart';

class SerializationV8 {
  static Uint8List serializeV8TxInit({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required int numWitnesses,
    required ParsedTransactionOptions? options,
    required int rawTxTotalLength,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.serializeTxOptions(writer, options ?? ParsedTransactionOptions(tagCborSets: false));
      writer.writeUint8(tx.network.networkId);
      writer.writeUint32(tx.network.networkMagic);
      writer.writeUint8(signingMode.value);
      writer.writeUint16(tx.inputs.length);
      writer.writeUint16(tx.outputs.length);
      SerializationUtils.serializeOptionFlag(writer, tx.ttl != null);
      writer.writeUint16(tx.certificates?.length ?? 0);
      writer.writeUint16(tx.withdrawals?.length ?? 0);

      final auxData = tx.auxiliaryData;
      SerializationUtils.serializeOptionFlag(writer, auxData != null);
      if (auxData != null) {
        final int auxDataType = switch (auxData) {
          ArbitraryHash() => 0x00,
          CIP36Registration() => 0x01,
        };
        writer.writeUint8(auxDataType);
        if (auxData is ArbitraryHash) {
          writer.write(hex.decode(auxData.hashHex));
        }
      }

      SerializationUtils.serializeOptionFlag(writer, tx.validityIntervalStart != null);
      writer.writeUint16(tx.mint?.length ?? 0);
      SerializationUtils.serializeOptionFlag(writer, tx.scriptDataHashHex != null);
      writer.writeUint16(tx.collateralInputs?.length ?? 0);
      writer.writeUint16(tx.requiredSigners?.length ?? 0);
      SerializationUtils.serializeOptionFlag(writer, tx.includeNetworkId ?? false);
      SerializationUtils.serializeOptionFlag(writer, tx.collateralOutput != null);
      SerializationUtils.serializeOptionFlag(writer, tx.totalCollateral != null);
      writer.writeUint16(tx.referenceInputs?.length ?? 0);
      writer.writeUint16(tx.votingProcedures?.length ?? 0);
      SerializationUtils.serializeOptionFlag(writer, tx.treasury != null);
      SerializationUtils.serializeOptionFlag(writer, tx.donation != null);
      writer.writeUint16(numWitnesses);
      writer.writeUint16(rawTxTotalLength);
      return writer.toBytes();
    });
  }

  static Uint8List serializeCredentialV8(ParsedCredential credential) {
    return useBinaryWriter((writer) {
      switch (credential) {
        case CredentialKeyHash():
          writer.writeUint8(0); // EXT_CREDENTIAL_KEY_HASH
          SerializationUtils.writeSerializedHex(writer, credential.keyHashHex);
        case CredentialScriptHash():
          writer.writeUint8(1); // EXT_CREDENTIAL_SCRIPT_HASH
          SerializationUtils.writeSerializedHex(writer, credential.scriptHashHex);
        case CredentialKeyPath():
          writer.writeUint8(2); // EXT_CREDENTIAL_KEY_PATH
          writer.write(SerializationUtils.serializePath(credential.path));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV8RawTxBody({
    required ParsedTransaction tx,
    required CardanoVersion version,
    required CardanoNetwork network,
  }) {
    return useBinaryWriter((writer) {
      for (final input in tx.inputs) {
        writer.write(SerializationUtils.serializeTxInput(input));
      }
      for (final output in tx.outputs) {
        final bytes = _serializeV8Output(output, version, network);
        writer.writeUint16(bytes.length);
        writer.write(bytes);
      }
      writer.write(SerializationUtils.serializeCoin(tx.fee));
      if (tx.ttl != null) writer.write(SerializationUtils.serializeUint64(tx.ttl!));
      for (final cert in tx.certificates ?? const []) {
        writer.write(_serializeV8Certificate(cert));
      }
      for (final w in tx.withdrawals ?? const []) {
        writer.write(SerializationUtils.serializeCoin(w.amount));
        writer.write(serializeCredentialV8(w.stakeCredential));
      }
      if (tx.validityIntervalStart != null) writer.write(SerializationUtils.serializeUint64(tx.validityIntervalStart!));
      for (final group in tx.mint ?? const []) {
        writer.write(hex.decode(group.policyIdHex));
        writer.writeUint16(group.tokens.length);
        for (final token in group.tokens) {
          final nameBytes = hex.decode(token.assetNameHex);
          writer.writeUint8(nameBytes.length);
          writer.write(nameBytes);
          writer.write(SerializationUtils.serializedInt64(token.amount));
        }
      }
      if (tx.scriptDataHashHex != null) writer.write(hex.decode(tx.scriptDataHashHex!.hexString));
      for (final input in tx.collateralInputs ?? const []) {
        writer.write(SerializationUtils.serializeTxInput(input));
      }
      for (final signer in tx.requiredSigners ?? const []) {
        writer.write(SerializationUtils.serializeRequiredSigner(signer));
      }
      if (tx.collateralOutput != null) {
        final bytes = _serializeV8Output(tx.collateralOutput!, version, network);
        writer.writeUint16(bytes.length);
        writer.write(bytes);
      }
      if (tx.totalCollateral != null) writer.write(SerializationUtils.serializeCoin(tx.totalCollateral!));
      for (final input in tx.referenceInputs ?? const []) {
        writer.write(SerializationUtils.serializeTxInput(input));
      }
      for (final voterVotes in tx.votingProcedures ?? const []) {
        writer.write(SerializationUtils.serializeVoter(voterVotes.voter));
        writer.writeUint16(voterVotes.votes.length);
        for (final vote in voterVotes.votes) {
          writer.write(hex.decode(vote.govActionId.txHashHex));
          writer.writeUint32(vote.govActionId.govActionIndex);
          writer.writeUint8(vote.votingProcedure.vote.value);
          writer.write(serializeAnchorV8(vote.votingProcedure.anchor));
        }
      }
      if (tx.treasury != null) writer.write(SerializationUtils.serializeCoin(tx.treasury!));
      if (tx.donation != null) writer.write(SerializationUtils.serializeCoin(tx.donation!));
      return writer.toBytes();
    });
  }

  static Uint8List _serializeV8Output(ParsedOutput output, CardanoVersion version, CardanoNetwork network) {
    return useBinaryWriter((writer) {
      writer.write(SerializationUtils.serializeTxOutputDestination(output.destination, version, network));
      writer.write(SerializationUtils.serializeCoin(output.amount));
      writer.writeUint8(output.format.value);
      SerializationUtils.serializeOptionFlag(writer, output.outputDatum != null);
      SerializationUtils.serializeOptionFlag(writer, output.referenceScriptHash != null);
      writer.writeUint16(output.tokenBundle.length);
      for (final group in output.tokenBundle) {
        writer.write(hex.decode(group.policyIdHex));
        writer.writeUint16(group.tokens.length);
        for (final token in group.tokens) {
          final nameBytes = hex.decode(token.assetNameHex);
          writer.writeUint8(nameBytes.length);
          writer.write(nameBytes);
          writer.write(SerializationUtils.serializeCoin(token.amount));
        }
      }
      final datum = output.outputDatum;
      if (datum != null) {
        switch (datum) {
          case ParsedDatumHash():
            writer.writeUint8(datum.datumValue);
            writer.write(hex.decode(datum.datumHashHex));
          case ParsedDatumInline():
            writer.writeUint8(datum.datumValue);
            final datumBytes = hex.decode(datum.datumHex);
            writer.writeUint16(datumBytes.length);
            writer.write(datumBytes);
        }
      }
      final refScriptHex = output.referenceScriptHash;
      if (refScriptHex != null) {
        final scriptBytes = hex.decode(refScriptHex);
        writer.writeUint16(scriptBytes.length);
        writer.write(scriptBytes);
      }
      return writer.toBytes();
    });
  }

  static Uint8List _serializeV8Certificate(ParsedCertificate certificate) {
    return useBinaryWriter((writer) {
      switch (certificate) {
        case StakeRegistration():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
        case StakeDeregistration():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
        case StakeRegistrationConway():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case StakeDeregistrationConway():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case StakeDelegation():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
        case VoteDelegation():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          writer.write(SerializationUtils.serializeDRep(certificate.dRep));
        case AuthorizeCommitteeHot():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.coldCredential));
          writer.write(serializeCredentialV8(certificate.hotCredential));
        case ResignCommitteeCold():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.coldCredential));
          writer.write(serializeAnchorV8(certificate.anchor));
        case DRepRegistration():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.dRepCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
          writer.write(serializeAnchorV8(certificate.anchor));
        case DRepDeregistration():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.dRepCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case DRepUpdate():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.dRepCredential));
          writer.write(serializeAnchorV8(certificate.anchor));
        case StakePoolAndDRepDelegation():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
          writer.write(SerializationUtils.serializeDRep(certificate.dRep));
        case AccountRegistrationDelegationToStakePool():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case AccountRegistrationDelegationToDRep():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          writer.write(SerializationUtils.serializeDRep(certificate.dRep));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case AccountRegistrationDelegationToStakePoolAndDRep():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(certificate.stakeCredential));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
          writer.write(SerializationUtils.serializeDRep(certificate.dRep));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        case StakePoolRegistration():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          final poolBytes = _serializeV8PoolRegistration(certificate.pool);
          writer.writeUint16(poolBytes.length);
          writer.write(poolBytes);
        case StakePoolRetirement():
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredentialV8(ParsedCredential.keyPath(path: certificate.path)));
          writer.write(SerializationUtils.serializeUint64(certificate.retirementEpoch));
      }
      return writer.toBytes();
    });
  }

  static Uint8List _serializeV8PoolRegistration(ParsedPoolParams pool) {
    return useBinaryWriter((writer) {
      final poolKeyCredential = switch (pool.poolKey) {
        DeviceOwnedPoolKey(:final path) => ParsedCredential.keyPath(path: path),
        ThirdPartyPoolKey(:final hashHex) => ParsedCredential.keyHash(keyHashHex: hashHex),
      };
      writer.write(serializeCredentialV8(poolKeyCredential));
      SerializationUtils.writeSerializedHex(writer, pool.vrfHashHex);
      SerializationUtils.writeSerializedCoin(writer, pool.pledge);
      SerializationUtils.writeSerializedCoin(writer, pool.cost);
      writer.write(SerializationUtils.serializeUint64(pool.margin.numerator));
      writer.write(SerializationUtils.serializeUint64(pool.margin.denominator));
      // the reward account is not a credential: the third-party variant carries
      // a full 29-byte reward account (1-byte header + 28-byte hash), so it is
      // serialized directly (tx_credential_types.h: ext_credential_type_t)
      switch (pool.rewardAccount) {
        case DeviceOwnedPoolRewardAccount(:final path):
          writer.writeUint8(2); // EXT_CREDENTIAL_KEY_PATH
          writer.write(SerializationUtils.serializePath(path));
        case ThirdPartyPoolRewardAccount(:final rewardAccountHex):
          writer.writeUint8(0); // EXT_CREDENTIAL_KEY_HASH
          SerializationUtils.writeSerializedHex(writer, rewardAccountHex);
      }
      writer.writeUint16(pool.owners.length);
      writer.writeUint16(pool.relays.length);
      SerializationUtils.serializeOptionFlag(writer, pool.metadata != null);
      for (final owner in pool.owners) {
        final ownerCredential = switch (owner) {
          DeviceOwnedPoolOwner(:final path) => ParsedCredential.keyPath(path: path),
          ThirdPartyPoolOwner(:final hashHex) => ParsedCredential.keyHash(keyHashHex: hashHex),
        };
        writer.write(serializeCredentialV8(ownerCredential));
      }
      for (final relay in pool.relays) {
        writer.write(_serializeV8PoolRelay(relay));
      }
      if (pool.metadata != null) {
        final meta = pool.metadata!;
        final urlBytes = utf8.encode(meta.url);
        writer.writeUint16(urlBytes.length);
        writer.write(urlBytes);
        SerializationUtils.writeSerializedHex(writer, meta.hashHex);
      }
      return writer.toBytes();
    });
  }

  static Uint8List _serializeV8PoolRelay(ParsedPoolRelay relay) {
    return useBinaryWriter((writer) {
      switch (relay) {
        case SingleHostIpAddr():
          writer.writeUint8(relay.relayType.value);
          SerializationUtils.serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          SerializationUtils.serializeOptional(
            writer,
            relay.ipv4,
            (w, value) => w.write(SerializationUtils.serializeIpv4(value)),
          );
          SerializationUtils.serializeOptional(
            writer,
            relay.ipv6,
            (w, value) => w.write(SerializationUtils.serializeIpv6(value)),
          );
        case SingleHostName():
          writer.writeUint8(relay.relayType.value);
          SerializationUtils.serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          final dnsBytes = SerializationUtils.serializeDnsName(relay.dnsName);
          SerializationUtils.serializeOptionFlag(writer, true);
          writer.writeUint8(dnsBytes.length);
          writer.write(dnsBytes);
        case MultiHost():
          writer.writeUint8(relay.relayType.value);
          final dnsBytes = SerializationUtils.serializeDnsName(relay.dnsName);
          SerializationUtils.serializeOptionFlag(writer, true);
          writer.writeUint8(dnsBytes.length);
          writer.write(dnsBytes);
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV8CVoteAuxDataInit({
    required ParsedCVoteRegistrationParams params,
    required CardanoVersion version,
    required CardanoNetwork network,
  }) {
    return useBinaryWriter((writer) {
      writer.writeUint8(params.format.encodingValue);
      writer.writeUint16(params.delegations?.length ?? 0);
      // staking path — always KEY_PATH
      writer.writeUint8(2);
      writer.write(SerializationUtils.serializePath(params.stakingPath));
      writer.write(SerializationUtils.serializeTxOutputDestination(params.paymentDestination, version, network));
      writer.write(SerializationUtils.serializeUint64(params.nonce));
      if (params.format == CIP36VoteRegistrationFormat.cip36) {
        writer.write(SerializationUtils.serializeUint64(params.votingPurpose ?? BigInt.zero));
        if (params.delegations?.isEmpty ?? true) {
          _writeV8CVoteKey(writer, params.votePublicKey, params.votePublicKeyPath);
        }
      } else {
        _writeV8CVoteKey(writer, params.votePublicKey, params.votePublicKeyPath);
      }
      return writer.toBytes();
    });
  }

  static void _writeV8CVoteKey(ByteDataWriter writer, CVotePublicKey? key, LedgerSigningPath? path) {
    if(key == null && path == null){
      throw LedgerCardanoValidationException("votePublicKey and votePublicKeyPath cannot both be null");
    }
    if(key != null && path!= null){
      throw LedgerCardanoValidationException("Only one of votePublicKey or votePublicKeyPath should be provided");  
    }
    if (key != null) {
      writer.writeUint8(0); // CVOTE_CREDENTIAL_KEY
      SerializationUtils.writeSerializedHex(writer, key.value);
    } else if (path != null) {
      writer.writeUint8(2); // CVOTE_CREDENTIAL_KEY_PATH
      writer.write(SerializationUtils.serializePath(path));
    }
  }

  static Uint8List serializeV8CVoteAuxDataDelegation(ParsedCVoteDelegation delegation) {
    return useBinaryWriter((writer) {
      switch (delegation) {
        case KeyDelegation():
          writer.writeUint8(0); // CVOTE_CREDENTIAL_KEY
          SerializationUtils.writeSerializedHex(writer, delegation.voteKey);
          writer.writeUint32(delegation.weight);
        case PathDelegation():
          writer.writeUint8(2); // CVOTE_CREDENTIAL_KEY_PATH
          writer.write(SerializationUtils.serializePath(delegation.voteKeyPath));
          writer.writeUint32(delegation.weight);
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeAnchorV8(ParsedAnchor? anchor) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.serializeOptionFlag(writer, anchor != null);
      if (anchor != null) {
        final urlBytes = Uint8List.fromList(utf8.encode(anchor.url));
        writer.writeUint16(urlBytes.length);
        writer.write(urlBytes);
        SerializationUtils.writeSerializedHex(writer, anchor.hashHex);
      }
      return writer.toBytes();
    });
  }

  // v8 uses FLAG_INCLUDED_NO=1 / FLAG_INCLUDED_YES=2 for hashPayload and isAscii flags
  static Uint8List serializeV8MessageDataInit({
    required CardanoVersion version,
    required ParsedMessageData msgData,
    required CardanoNetwork network,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
      final msgBytes = hex.decode(msgData.messageHex);
      final addressBuffer = switch (msgData) {
        ParsedMessageDataAddress() => SerializationUtils.serializeAddressParams(msgData.address, version, network),
        ParsedMessageDataKeyHash() => Uint8List(0),
      };
      writer.write(SerializationUtils.serializeUint32(msgBytes.length));
      writer.write(SerializationUtils.serializePath(msgData.signingPath));
      SerializationUtils.serializeOptionFlag(writer, msgData.hashPayload);
      SerializationUtils.serializeOptionFlag(writer, msgData.isAscii);
      writer.writeUint8(msgData.serializedDataFieldType);
      writer.write(addressBuffer);
      return writer.toBytes();
    });
  }
}
