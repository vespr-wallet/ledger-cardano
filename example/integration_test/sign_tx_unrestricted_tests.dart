import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import 'cases/sign_tx_unrestricted.dart';
import 'test_utils.dart';

// NOTE: Unrestricted transaction signing requires *expert mode* to be enabled
// on the device. It is kept in a separate test entry point so the main
// `sign_tx_tests.dart` suite can run without expert mode enabled.
void main() async {
  CardanoLedger.debugPrintEnabled = true;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final CardanoLedgerConnection cardanoApp = await establishCardanoConnection();
  final CardanoVersion appVersion = await cardanoApp.getVersion();
  print('Connected to device: ${cardanoApp.device.name}');

  group('signTxUnrestricted', () {
    tearDownAll(() async {
      await cardanoApp.disconnect();
    });

    for (final testCase in testsUnrestricted) {
      versionConstrainedTest(
        testCase.testName,
        appVersion: appVersion,
        minSupportedVersion: testCase.minSupportedVersion,
        body: () async {
          final result = await cardanoApp.signTransaction(testCase.request);
          expectVespr(result, equals(testCase.expected));
        },
      );
    }
  });
}
