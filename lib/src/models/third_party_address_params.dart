import 'package:freezed_annotation/freezed_annotation.dart';

part 'third_party_address_params.freezed.dart';

@freezed
class ThirdPartyAddressParams with _$ThirdPartyAddressParams {
  const ThirdPartyAddressParams._();

  const factory ThirdPartyAddressParams({
    required String addressHex,
  }) = _ThirdPartyAddressParams;
}