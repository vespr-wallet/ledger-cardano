// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCVoteRegistrationParams {

 CIP36VoteRegistrationFormat get format => throw _privateConstructorUsedError; CVotePublicKey? get votePublicKey => throw _privateConstructorUsedError; LedgerSigningPath? get votePublicKeyPath => throw _privateConstructorUsedError; List<ParsedCVoteDelegation>? get delegations => throw _privateConstructorUsedError; LedgerSigningPath get stakingPath => throw _privateConstructorUsedError; ParsedOutputDestination get paymentDestination => throw _privateConstructorUsedError; BigInt get nonce => throw _privateConstructorUsedError; BigInt? get votingPurpose => throw _privateConstructorUsedError;







/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedCVoteRegistrationParamsCopyWith<ParsedCVoteRegistrationParams> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedCVoteRegistrationParamsCopyWith<$Res>  {
  factory $ParsedCVoteRegistrationParamsCopyWith(ParsedCVoteRegistrationParams value, $Res Function(ParsedCVoteRegistrationParams) then) = _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res, ParsedCVoteRegistrationParams>;
@useResult
$Res call({
 CIP36VoteRegistrationFormat format, CVotePublicKey? votePublicKey, LedgerSigningPath? votePublicKeyPath, List<ParsedCVoteDelegation>? delegations, LedgerSigningPath stakingPath, ParsedOutputDestination paymentDestination, BigInt nonce, BigInt? votingPurpose
});


$CVotePublicKeyCopyWith<$Res>? get votePublicKey;$LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath;$LedgerSigningPathCopyWith<$Res> get stakingPath;$ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res,$Val extends ParsedCVoteRegistrationParams> implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  _$ParsedCVoteRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? format = null,Object? votePublicKey = freezed,Object? votePublicKeyPath = freezed,Object? delegations = freezed,Object? stakingPath = null,Object? paymentDestination = null,Object? nonce = null,Object? votingPurpose = freezed,}) {
  return _then(_value.copyWith(
format: null == format ? _value.format : format // ignore: cast_nullable_to_non_nullable
as CIP36VoteRegistrationFormat,votePublicKey: freezed == votePublicKey ? _value.votePublicKey : votePublicKey // ignore: cast_nullable_to_non_nullable
as CVotePublicKey?,votePublicKeyPath: freezed == votePublicKeyPath ? _value.votePublicKeyPath : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,delegations: freezed == delegations ? _value.delegations : delegations // ignore: cast_nullable_to_non_nullable
as List<ParsedCVoteDelegation>?,stakingPath: null == stakingPath ? _value.stakingPath : stakingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,paymentDestination: null == paymentDestination ? _value.paymentDestination : paymentDestination // ignore: cast_nullable_to_non_nullable
as ParsedOutputDestination,nonce: null == nonce ? _value.nonce : nonce // ignore: cast_nullable_to_non_nullable
as BigInt,votingPurpose: freezed == votingPurpose ? _value.votingPurpose : votingPurpose // ignore: cast_nullable_to_non_nullable
as BigInt?,
  )as $Val);
}
/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CVotePublicKeyCopyWith<$Res>? get votePublicKey {
    if (_value.votePublicKey == null) {
    return null;
  }

  return $CVotePublicKeyCopyWith<$Res>(_value.votePublicKey!, (value) {
    return _then(_value.copyWith(votePublicKey: value) as $Val);
  });
}/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath {
    if (_value.votePublicKeyPath == null) {
    return null;
  }

  return $LedgerSigningPathCopyWith<$Res>(_value.votePublicKeyPath!, (value) {
    return _then(_value.copyWith(votePublicKeyPath: value) as $Val);
  });
}/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get stakingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.stakingPath, (value) {
    return _then(_value.copyWith(stakingPath: value) as $Val);
  });
}/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputDestinationCopyWith<$Res> get paymentDestination {
  
  return $ParsedOutputDestinationCopyWith<$Res>(_value.paymentDestination, (value) {
    return _then(_value.copyWith(paymentDestination: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedCVoteRegistrationParamsImplCopyWith<$Res> implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  factory _$$ParsedCVoteRegistrationParamsImplCopyWith(_$ParsedCVoteRegistrationParamsImpl value, $Res Function(_$ParsedCVoteRegistrationParamsImpl) then) = __$$ParsedCVoteRegistrationParamsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CIP36VoteRegistrationFormat format, CVotePublicKey? votePublicKey, LedgerSigningPath? votePublicKeyPath, List<ParsedCVoteDelegation>? delegations, LedgerSigningPath stakingPath, ParsedOutputDestination paymentDestination, BigInt nonce, BigInt? votingPurpose
});


@override $CVotePublicKeyCopyWith<$Res>? get votePublicKey;@override $LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath;@override $LedgerSigningPathCopyWith<$Res> get stakingPath;@override $ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class __$$ParsedCVoteRegistrationParamsImplCopyWithImpl<$Res> extends _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res, _$ParsedCVoteRegistrationParamsImpl> implements _$$ParsedCVoteRegistrationParamsImplCopyWith<$Res> {
  __$$ParsedCVoteRegistrationParamsImplCopyWithImpl(_$ParsedCVoteRegistrationParamsImpl _value, $Res Function(_$ParsedCVoteRegistrationParamsImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? format = null,Object? votePublicKey = freezed,Object? votePublicKeyPath = freezed,Object? delegations = freezed,Object? stakingPath = null,Object? paymentDestination = null,Object? nonce = null,Object? votingPurpose = freezed,}) {
  return _then(_$ParsedCVoteRegistrationParamsImpl(
format: null == format ? _value.format : format // ignore: cast_nullable_to_non_nullable
as CIP36VoteRegistrationFormat,votePublicKey: freezed == votePublicKey ? _value.votePublicKey : votePublicKey // ignore: cast_nullable_to_non_nullable
as CVotePublicKey?,votePublicKeyPath: freezed == votePublicKeyPath ? _value.votePublicKeyPath : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,delegations: freezed == delegations ? _value._delegations : delegations // ignore: cast_nullable_to_non_nullable
as List<ParsedCVoteDelegation>?,stakingPath: null == stakingPath ? _value.stakingPath : stakingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,paymentDestination: null == paymentDestination ? _value.paymentDestination : paymentDestination // ignore: cast_nullable_to_non_nullable
as ParsedOutputDestination,nonce: null == nonce ? _value.nonce : nonce // ignore: cast_nullable_to_non_nullable
as BigInt,votingPurpose: freezed == votingPurpose ? _value.votingPurpose : votingPurpose // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

/// @nodoc


class _$ParsedCVoteRegistrationParamsImpl extends _ParsedCVoteRegistrationParams  {
   _$ParsedCVoteRegistrationParamsImpl({required this.format, required this.votePublicKey, required this.votePublicKeyPath, required final  List<ParsedCVoteDelegation>? delegations, required this.stakingPath, required this.paymentDestination, required this.nonce, required this.votingPurpose}): _delegations = delegations,super._();

  

@override final  CIP36VoteRegistrationFormat format;
@override final  CVotePublicKey? votePublicKey;
@override final  LedgerSigningPath? votePublicKeyPath;
 final  List<ParsedCVoteDelegation>? _delegations;
@override List<ParsedCVoteDelegation>? get delegations {
  final value = _delegations;
  if (value == null) return null;
  if (_delegations is EqualUnmodifiableListView) return _delegations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LedgerSigningPath stakingPath;
@override final  ParsedOutputDestination paymentDestination;
@override final  BigInt nonce;
@override final  BigInt? votingPurpose;

@override
String toString() {
  return 'ParsedCVoteRegistrationParams(format: $format, votePublicKey: $votePublicKey, votePublicKeyPath: $votePublicKeyPath, delegations: $delegations, stakingPath: $stakingPath, paymentDestination: $paymentDestination, nonce: $nonce, votingPurpose: $votingPurpose)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedCVoteRegistrationParamsImpl&&(identical(other.format, format) || other.format == format)&&(identical(other.votePublicKey, votePublicKey) || other.votePublicKey == votePublicKey)&&(identical(other.votePublicKeyPath, votePublicKeyPath) || other.votePublicKeyPath == votePublicKeyPath)&&const DeepCollectionEquality().equals(other._delegations, _delegations)&&(identical(other.stakingPath, stakingPath) || other.stakingPath == stakingPath)&&(identical(other.paymentDestination, paymentDestination) || other.paymentDestination == paymentDestination)&&(identical(other.nonce, nonce) || other.nonce == nonce)&&(identical(other.votingPurpose, votingPurpose) || other.votingPurpose == votingPurpose));
}


@override
int get hashCode => Object.hash(runtimeType,format,votePublicKey,votePublicKeyPath,const DeepCollectionEquality().hash(_delegations),stakingPath,paymentDestination,nonce,votingPurpose);

/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedCVoteRegistrationParamsImplCopyWith<_$ParsedCVoteRegistrationParamsImpl> get copyWith => __$$ParsedCVoteRegistrationParamsImplCopyWithImpl<_$ParsedCVoteRegistrationParamsImpl>(this, _$identity);








}


abstract class _ParsedCVoteRegistrationParams extends ParsedCVoteRegistrationParams {
   factory _ParsedCVoteRegistrationParams({required final  CIP36VoteRegistrationFormat format, required final  CVotePublicKey? votePublicKey, required final  LedgerSigningPath? votePublicKeyPath, required final  List<ParsedCVoteDelegation>? delegations, required final  LedgerSigningPath stakingPath, required final  ParsedOutputDestination paymentDestination, required final  BigInt nonce, required final  BigInt? votingPurpose}) = _$ParsedCVoteRegistrationParamsImpl;
   _ParsedCVoteRegistrationParams._(): super._();

  

@override CIP36VoteRegistrationFormat get format;@override CVotePublicKey? get votePublicKey;@override LedgerSigningPath? get votePublicKeyPath;@override List<ParsedCVoteDelegation>? get delegations;@override LedgerSigningPath get stakingPath;@override ParsedOutputDestination get paymentDestination;@override BigInt get nonce;@override BigInt? get votingPurpose;
/// Create a copy of ParsedCVoteRegistrationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedCVoteRegistrationParamsImplCopyWith<_$ParsedCVoteRegistrationParamsImpl> get copyWith => throw _privateConstructorUsedError;

}
