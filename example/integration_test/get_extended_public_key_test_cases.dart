import 'package:ledger_cardano/ledger_cardano.dart';

class ExtendedPublicKeyTestCase {
  final List<int> path;
  final ExtendedPublicKeyExpected expected;

  ExtendedPublicKeyTestCase({required this.path, required this.expected});
}

class ExtendedPublicKeyExpected {
  final String publicKey;
  final String chainCode;

  ExtendedPublicKeyExpected({required this.publicKey, required this.chainCode});
}

final testsByron = [
  ExtendedPublicKeyTestCase(
    path: [harden + 44, harden + 1815, harden + 1],
    expected: ExtendedPublicKeyExpected(
      publicKey: 'eb6e933ce45516ac7b0e023de700efae5e212ccc6bf0fcb33ba9243b9d832827',
      chainCode: '0b161cb11babe1f56c3f9f1cbbb7b6d2d13eeb3efa67205198a69b8d81885354',
    ),
  ),
  ExtendedPublicKeyTestCase(
    path: [harden + 44, harden + 1815, harden + 1, 0, harden + 55],
    expected: ExtendedPublicKeyExpected(
      publicKey: '83220849a3ada3e95495e22b24aee95c3120d4c8a9faafed312914769e65b70d',
      chainCode: '69d1b1d5a95ba88b2851d6e1da2d2113f4eca6949f31ababf007deffaba6ae26',
    ),
  ),
  ExtendedPublicKeyTestCase(
    path: [harden + 44, harden + 1815, harden + 1, 0, harden + 12],
    expected: ExtendedPublicKeyExpected(
      publicKey: '40711c6ebf9c0a4c73987687a09255d9cfa8591c9915162ba11054ec4ee77e09',
      chainCode: 'b4fbd48d01d09c7cbcaed7a48ffac9d53ddf5564ad468bfef18fe7d9bc535a16',
    ),
  ),
];

final testsShelleyUsual = [
  ExtendedPublicKeyTestCase(
    path: [harden + 1852, harden + 1815, harden + 4],
    expected: ExtendedPublicKeyExpected(
      publicKey: '4e4353d7cc6f49e8e7a281e08a7672d000d4abfdf07be299cbff95d6a05df224',
      chainCode: 'cbc28c222a6c15c0cfe98434f97b3aef860b5ce6902e177820adbd70ed7dc2ec',
    ),
  ),
  ExtendedPublicKeyTestCase(
    path: [harden + 1852, harden + 1815, harden + 0, 0, 1],
    expected: ExtendedPublicKeyExpected(
      publicKey: 'b3d5f4158f0c391ee2a28a2e285f218f3e895ff6ff59cb9369c64b03b5bab5eb',
      chainCode: '27e1d1f3a3d0fafc0884e02a2d972e7e5b1be8a385ecc1bc75a977b4073dbd08',
    ),
  ),
  ExtendedPublicKeyTestCase(
    path: [harden + 1852, harden + 1815, harden + 0, 2, 0],
    expected: ExtendedPublicKeyExpected(
      publicKey: '66610efd336e1137c525937b76511fbcf2a0e6bcf0d340a67bcb39bc870d85e8',
      chainCode: 'e977e956d29810dbfbda9c8ea667585982454e401c68578623d4b86bc7eb7b58',
    ),
  ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 0, 2, 1001],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: 'dbc5fbbe47eabc036c6834ea62c011b15272ec85a17facd3670cd9304486ffe8',
  //     chainCode: 'fb037474fc75e64745f7fd9f44b4bcbc58d81cae2209f2f5c1f77501e9bb43df',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 0, 3, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: '7cc18df2fbd3ee1b16b76843b18446679ab95dbcd07b7833b66a9407c0709e37',
  //     chainCode: '01d881e1c04fed8defa9a3e8bd3cf85bd975f813ff8eb622d20a4375a07d6bc9',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 0, 4, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: 'bc8c8a37d6ab41339bb073e72ce2e776cefed98d1a6d070ea5fada80dc7d6737',
  //     chainCode: '6f58406a51d33bb35e98884cbadced9bc94f65a752001ad5f4788af07b2ec0fe',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 1, 5, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: '624142a80217b95ca2fc5b0c1f8d74e26e5683621c430c7bc7eebca6ee541a58',
  //     chainCode: '92a8c64cfdf1af08e78c2ba59bef496eb34ddf24bdf0f91404a962415a7a0810',
  //   ),
  // ),
];

final testsShelleyUnusual = [
  ExtendedPublicKeyTestCase(
    path: [harden + 1852, harden + 1815, harden + 101],
    expected: ExtendedPublicKeyExpected(
      publicKey: '674af1cfe5919576714bb31f065ac93788a6a2fb5168362c0aa9509ac513bbbc',
      chainCode: '5d403248edff92b87433ae97942326cd1656a57301a03988fb36b9ae728d4d2c',
    ),
  ),
  ExtendedPublicKeyTestCase(
    path: [harden + 1852, harden + 1815, harden + 100, 0, harden + 1000001],
    expected: ExtendedPublicKeyExpected(
      publicKey: 'd06a7a9d87e95f475811e31b03564d272f1c2614e8b2cf0f37d6e973fd2aba9c',
      chainCode: '8aca949d791e4a4f26e05e55d39d17f565884b56882283cf7d97e338fa7ab9ee',
    ),
  ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 0, 2, 1000001],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: '1763dfbba10629d5e9ed8f8714889f82f0bdb4b62af22b19b607713919f93e4d',
  //     chainCode: 'b46ecc1459e0ad4ae7fa1b9a7440584b6177472db300304a3191a91b7fb0e1e8',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 101, 3, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: 'a4fecb8d8febd80d1f7eefe3d1705b03405e219df1f6aa4c2e227b5909df873e',
  //     chainCode: 'a0aac4f3cfe62e20ad66c5f737979eecc4472c61c41d8d5f4e06cf13a2386648',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 101, 4, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: '6967cc28a4665b319405b5ce8dae9ae6c89967fb3068f7f84c66bf6abbab94f2',
  //     chainCode: '66381ec0b35d2805256f5d57ec47abf948a3206902868ed80b04a5b0e81cf1de',
  //   ),
  // ),
  //TODO: LedgerException caught: Rejected by policy
  // ExtendedPublicKeyTestCase(
  //   path: [harden + 1852, harden + 1815, harden + 101, 5, 0],
  //   expected: ExtendedPublicKeyExpected(
  //     publicKey: '1b520336538452b69d5562e5d714bfe7aeeb7cf9afd1d8574af1823c5636f9eb',
  //     chainCode: '5e21bf9678c54b880d2f594f3b0cd1c000f8516f809fc0f6aaaa35e2d2030e40',
  //   ),
  // ),
];

final testsColdKeys = [
  ExtendedPublicKeyTestCase(
    path: [harden + 1853, harden + 1815, harden + 0, harden + 0],
    expected: ExtendedPublicKeyExpected(
      publicKey: '3d7e84dca8b4bc322401a2cc814af7c84d2992a22f99554fe340d7df7910768d',
      chainCode: '1e2a47754207da3069f90241fbf3b8742c367e9028e5f3f85ae3660330b4f5b7',
    ),
  ),
];


//TODO: LedgerException caught: Rejected by policy
// final testsCVoteKeys = [
//   ExtendedPublicKeyTestCase(
//     path: [harden + 1694, harden + 1815, harden + 0, 0, 1],
//     expected: ExtendedPublicKeyExpected(
//       publicKey: 'aac861247bd24cae705bca1d1c9763f19c19188fb0faf257c50ed69b8157bced',
//       chainCode: 'f23595dd3207b7dde477347fa25d3fd6291c3363df43b54a9cf523d2c7683c10',
//     ),
//   ),
//   ExtendedPublicKeyTestCase(
//     path: [harden + 1694, harden + 1815, harden + 100],
//     expected: ExtendedPublicKeyExpected(
//       publicKey: 'ff451db773898b80488d892b248acdc634f6ec79d923f12aae9feb2563513b63',
//       chainCode: '47478097ef56dcef686f8dcbd7d0c1d073740cde65a48e5615799096f67a144f',
//     ),
//   ),
//   ExtendedPublicKeyTestCase(
//     path: [harden + 1694, harden + 1815, harden + 101],
//     expected: ExtendedPublicKeyExpected(
//       publicKey: 'c7adc69b6dd29c48d29edb089c1aecbe218fdb9cfa59c325afcd2c5fa3844be1',
//       chainCode: 'ffa9953f6c77fccc15c000db494177d84e218f2740ddd44cfcbea0455cc6a6be',
//     ),
//   ),
// ];
