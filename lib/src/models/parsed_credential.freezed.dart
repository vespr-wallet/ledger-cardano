// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCredential {










}

/// @nodoc
abstract class $ParsedCredentialCopyWith<$Res>  {
  factory $ParsedCredentialCopyWith(ParsedCredential value, $Res Function(ParsedCredential) then) = _$ParsedCredentialCopyWithImpl<$Res, ParsedCredential>;



}

/// @nodoc
class _$ParsedCredentialCopyWithImpl<$Res,$Val extends ParsedCredential> implements $ParsedCredentialCopyWith<$Res> {
  _$ParsedCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$CredentialKeyPathImplCopyWith<$Res>  {
  factory _$$CredentialKeyPathImplCopyWith(_$CredentialKeyPathImpl value, $Res Function(_$CredentialKeyPathImpl) then) = __$$CredentialKeyPathImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class __$$CredentialKeyPathImplCopyWithImpl<$Res> extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialKeyPathImpl> implements _$$CredentialKeyPathImplCopyWith<$Res> {
  __$$CredentialKeyPathImplCopyWithImpl(_$CredentialKeyPathImpl _value, $Res Function(_$CredentialKeyPathImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_$CredentialKeyPathImpl(
path: null == path ? _value.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get path {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.path, (value) {
    return _then(_value.copyWith(path: value) );
  });
}
}

/// @nodoc


class _$CredentialKeyPathImpl extends CredentialKeyPath  {
   _$CredentialKeyPathImpl({required this.path}): super._();

  

@override final  LedgerSigningPath path;

@override
String toString() {
  return 'ParsedCredential.keyPath(path: $path)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CredentialKeyPathImpl&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CredentialKeyPathImplCopyWith<_$CredentialKeyPathImpl> get copyWith => __$$CredentialKeyPathImplCopyWithImpl<_$CredentialKeyPathImpl>(this, _$identity);








}


abstract class CredentialKeyPath extends ParsedCredential {
   factory CredentialKeyPath({required final  LedgerSigningPath path}) = _$CredentialKeyPathImpl;
   CredentialKeyPath._(): super._();

  

 LedgerSigningPath get path;
/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CredentialKeyPathImplCopyWith<_$CredentialKeyPathImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CredentialKeyHashImplCopyWith<$Res>  {
  factory _$$CredentialKeyHashImplCopyWith(_$CredentialKeyHashImpl value, $Res Function(_$CredentialKeyHashImpl) then) = __$$CredentialKeyHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String keyHashHex
});



}

/// @nodoc
class __$$CredentialKeyHashImplCopyWithImpl<$Res> extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialKeyHashImpl> implements _$$CredentialKeyHashImplCopyWith<$Res> {
  __$$CredentialKeyHashImplCopyWithImpl(_$CredentialKeyHashImpl _value, $Res Function(_$CredentialKeyHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyHashHex = null,}) {
  return _then(_$CredentialKeyHashImpl(
keyHashHex: null == keyHashHex ? _value.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CredentialKeyHashImpl extends CredentialKeyHash  {
   _$CredentialKeyHashImpl({required this.keyHashHex}): super._();

  

@override final  String keyHashHex;

@override
String toString() {
  return 'ParsedCredential.keyHash(keyHashHex: $keyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CredentialKeyHashImpl&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CredentialKeyHashImplCopyWith<_$CredentialKeyHashImpl> get copyWith => __$$CredentialKeyHashImplCopyWithImpl<_$CredentialKeyHashImpl>(this, _$identity);








}


abstract class CredentialKeyHash extends ParsedCredential {
   factory CredentialKeyHash({required final  String keyHashHex}) = _$CredentialKeyHashImpl;
   CredentialKeyHash._(): super._();

  

 String get keyHashHex;
/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CredentialKeyHashImplCopyWith<_$CredentialKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CredentialScriptHashImplCopyWith<$Res>  {
  factory _$$CredentialScriptHashImplCopyWith(_$CredentialScriptHashImpl value, $Res Function(_$CredentialScriptHashImpl) then) = __$$CredentialScriptHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String scriptHashHex
});



}

/// @nodoc
class __$$CredentialScriptHashImplCopyWithImpl<$Res> extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialScriptHashImpl> implements _$$CredentialScriptHashImplCopyWith<$Res> {
  __$$CredentialScriptHashImplCopyWithImpl(_$CredentialScriptHashImpl _value, $Res Function(_$CredentialScriptHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptHashHex = null,}) {
  return _then(_$CredentialScriptHashImpl(
scriptHashHex: null == scriptHashHex ? _value.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CredentialScriptHashImpl extends CredentialScriptHash  {
   _$CredentialScriptHashImpl({required this.scriptHashHex}): super._();

  

@override final  String scriptHashHex;

@override
String toString() {
  return 'ParsedCredential.scriptHash(scriptHashHex: $scriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CredentialScriptHashImpl&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CredentialScriptHashImplCopyWith<_$CredentialScriptHashImpl> get copyWith => __$$CredentialScriptHashImplCopyWithImpl<_$CredentialScriptHashImpl>(this, _$identity);








}


abstract class CredentialScriptHash extends ParsedCredential {
   factory CredentialScriptHash({required final  String scriptHashHex}) = _$CredentialScriptHashImpl;
   CredentialScriptHash._(): super._();

  

 String get scriptHashHex;
/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CredentialScriptHashImplCopyWith<_$CredentialScriptHashImpl> get copyWith => throw _privateConstructorUsedError;

}
