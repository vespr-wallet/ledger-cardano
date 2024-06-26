import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'sign_tx_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signTx', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print('Connected to device: ${device.name}');
    });

    group('signTxAlonzo', () {
      test('Alonzo transaction signing with version check', () async {
        final appVersion = await cardanoApp.getVersion(device);
        final filteredTests = testsAlonzo
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsAlonzo.length) {
          print("Skipped ${testsAlonzo.length - filteredTests.length} tests due to min cardano version");
        }

        for (final testCase in filteredTests) {
          test(testCase.testName, () async {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, equals(testCase.expected));
          });
        }
      });
    });

    group('Specific Test Case: Sign tx with treasury', () {
      test('Sign tx with treasury', () async {
        // Assuming testsAlonzo contains the specific test case
        final testCase = testsAlonzo.firstWhere((test) => test.testName == 'Sign tx with treasury');
        expectVespr(
          () => cardanoApp.signTransaction(device, testCase.request),
          equals(testCase.expected),
        );
      });
    });

    group('signTxBabbage', () {
      for (final testCase in testsBabbage) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxByron', () {
      for (final testCase in testsByron) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxShelleyNoCertificates', () {
      for (final testCase in testsShelleyNoCertificates) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxShelleyWithCertificates', () {
      for (final testCase in testsShelleyWithCertificates) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxConwayWithoutCertificates', () {
      test('Conway transaction signing without certificates with version check', () async {
        final appVersion = await cardanoApp.getVersion(device);
        final filteredTests = testsConwayWithoutCertificates
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsConwayWithoutCertificates.length) {
          print(
              "Skipped ${testsConwayWithoutCertificates.length - filteredTests.length} tests due to min cardano version");
        }

        for (final testCase in filteredTests) {
          test(testCase.testName, () async {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, equals(testCase.expected));
          });
        }
      });
    });

    group('signTxConwayWithCertificates', () {
      test('Conway transaction signing with certificates with version check', () async {
        final appVersion = await cardanoApp.getVersion(device);
        final filteredTests = testsConwayWithCertificates
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsConwayWithCertificates.length) {
          print(
              "Skipped ${testsConwayWithCertificates.length - filteredTests.length} tests due to min cardano version");
        }

        for (final testCase in filteredTests) {
          test(testCase.testName, () async {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, equals(testCase.expected));
          });
        }
      });
    });

    // group('signTxConwayVotingProcedures', () {
    //   for (final testCase in testsConwayVotingProcedures) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expectVespr(result, equals(testCase.expected));
    //     });
    //   }
    // });

    group('signTxMultisig', () {
      for (final testCase in testsMultisig) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxAllegra', () {
      for (final testCase in testsAllegra) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxMary', () {
      for (final testCase in testsMary) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxTrezorComparison', () {
      for (final testCase in testsAlonzoTrezorComparison) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxBabbageTrezorComparison', () {
      for (final testCase in testsBabbageTrezorComparison) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('signTxMultidelegation', () {
      for (final testCase in testsMultidelegation) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });

    group('Specific Test Case: Sign tx with short inline datum in output with tokens', () {
      test('Sign tx with short inline datum in output with tokens', () async {
        // Assuming testsMary contains the specific test case
        final testCase = testsMultidelegation
            .firstWhere((test) => test.testName == 'Sign tx with multidelegation keys in all tx elements');
        expectVespr(
          () => cardanoApp.signTransaction(device, testCase.request),
          equals(testCase.expected),
        );
      });
    });

    // Test group for Byron transactions
    group('signTxByron', () {
      for (final testCase in testsByron) {
        test(testCase.testName, () async {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expectVespr(result, equals(testCase.expected));
        });
      }
    });
  });
}
