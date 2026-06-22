import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final _stakePath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.stake,
);

final _poolRetirementPath = LedgerSigningPath.poolCold(account: 0, index: 1);

final _dRepPath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.drepCredential,
);

final _committeeColdPath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.constitutionalCommitteeCold,
);

final _committeeHotPath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.constitutionalCommitteeHot,
);

const _poolKeyHashHex = 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973';

final _anchor = ParsedAnchor(
  url: 'https://www.vacuumlabs.com/sampleAnchor',
  hashHex: '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8deadbeef',
);

final testsConwayCombinedCerts = [
  SignTxTestCase(
    testName: 'Sign tx with all certificate types including combined certificates',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
          ),
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
          ),
          ParsedCertificate.stakeRegistrationConway(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            deposit: BigInt.from(17),
          ),
          ParsedCertificate.stakeDeregistrationConway(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            deposit: BigInt.from(17),
          ),
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            poolKeyHashHex: _poolKeyHashHex,
          ),
          ParsedCertificate.stakePoolRetirement(
            path: _poolRetirementPath,
            retirementEpoch: BigInt.from(42),
          ),
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            dRep: ParsedDRep.keyPath(path: _dRepPath),
          ),
          ParsedCertificate.authorizeCommitteeHot(
            coldCredential: ParsedCredential.keyPath(path: _committeeColdPath),
            hotCredential: ParsedCredential.keyPath(path: _committeeHotPath),
          ),
          ParsedCertificate.resignCommitteeCold(
            coldCredential: ParsedCredential.keyPath(path: _committeeColdPath),
            anchor: _anchor,
          ),
          ParsedCertificate.dRepRegistration(
            dRepCredential: ParsedCredential.keyPath(path: _dRepPath),
            deposit: BigInt.from(19),
            anchor: _anchor,
          ),
          ParsedCertificate.dRepDeregistration(
            dRepCredential: ParsedCredential.keyPath(path: _dRepPath),
            deposit: BigInt.from(19),
          ),
          ParsedCertificate.dRepUpdate(
            dRepCredential: ParsedCredential.keyPath(path: _dRepPath),
            anchor: _anchor,
          ),
          ParsedCertificate.stakePoolAndDRepDelegation(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            poolKeyHashHex: _poolKeyHashHex,
            dRep: ParsedDRep.keyPath(path: _dRepPath),
          ),
          ParsedCertificate.accountRegistrationDelegationToStakePool(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            deposit: BigInt.from(1000000),
            poolKeyHashHex: _poolKeyHashHex,
          ),
          ParsedCertificate.accountRegistrationDelegationToDRep(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            deposit: BigInt.from(1000000),
            dRep: ParsedDRep.keyPath(path: _dRepPath),
          ),
          ParsedCertificate.accountRegistrationDelegationToStakePoolAndDRep(
            stakeCredential: ParsedCredential.keyPath(path: _stakePath),
            deposit: BigInt.from(1000000),
            poolKeyHashHex: _poolKeyHashHex,
            dRep: ParsedDRep.keyPath(path: _dRepPath),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'b3a34e61830daae31aafa26c1d5a363bd7e86f7d37f031e1ddaa881f3bf35940',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'fd9fa79656e587d18c56df957f68fcf62a6404a691d9b29c5507ab973aadadba5b1f4d438ecf1f755f3d1891bca64a4f42d5b20f39b07eb73d3f842243adac09',
        ),
        Witness(
          path: _stakePath,
          witnessSignatureHex:
              '4f4a2283b7061742dc9bd7ffa4e7f301db7f87d4b31a34bc1c188beff7ccb67bfb1c453cc0c46e61f3c8a25b4ca99cba2a3fa2bcf0c0069206c95b6eea3b2202',
        ),
        Witness(
          path: _poolRetirementPath,
          witnessSignatureHex:
              'c73e5a35237a873a66aece7f2bf77236812a5ef7bb10f141c28c8c0d1d4d5f7846fbf8e94f476345f3f1ebd94213672471701e6298c9d9cbd70a9e32d73ec507',
        ),
        Witness(
          path: _committeeColdPath,
          witnessSignatureHex:
              'd6b1c7caf997af96ff082ea082e8bc388c2a22e82999e1040f54f088fd99b0b50aeb09c1f7536b6aaf18c4c003fa63e0c4788f74e308b98d0d0e7da8e8deb608',
        ),
        Witness(
          path: _dRepPath,
          witnessSignatureHex:
              '0cf57ea5835ff2a8bb8939711d2c8ca620f25ddf64b18b71e9e0baab6c70c3108c28d8b917f89d33010cca73ea330fced0147602b455c1b859a2c39e97fb8b0e',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(80000),
  ),
];
