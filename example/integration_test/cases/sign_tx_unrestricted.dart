import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsUnrestricted = [
  SignTxTestCase(
    testName: 'Sign tx unrestricted with pool retirement combined with stake registration',
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
          ParsedCertificate.stakePoolRetirement(
            path: LedgerSigningPath.poolCold(account: 0, index: 0),
            retirementEpoch: BigInt.from(10),
          ),
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.unrestrictedTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '70aea83c8e5e9a3e0ec92860d5bd4750c34911193f092a96b9da6906d6ea6247',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '8212cdabe1be514fdc21e02a2b405ce284ebbce0208a5c2b289dac662bf87fb4c2d18237c66761e285d78ee76cc26b7517718e641174d69f49737a49e9482607',
        ),
        Witness(
          path: LedgerSigningPath.poolCold(account: 0, index: 0),
          witnessSignatureHex:
              '9386c2545e2671497daf95db93be1386690a4f884547a60f2913ef8a9e61486ba068d7477e1cd712f8d9cc20778d9e71b72eda96c9394c2f3111c61803f9a70d',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(80000),
  ),
];
