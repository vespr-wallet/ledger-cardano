// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolMetadata {

 String get url => throw _privateConstructorUsedError; String get hashHex => throw _privateConstructorUsedError;







/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedPoolMetadataCopyWith<ParsedPoolMetadata> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedPoolMetadataCopyWith<$Res>  {
  factory $ParsedPoolMetadataCopyWith(ParsedPoolMetadata value, $Res Function(ParsedPoolMetadata) then) = _$ParsedPoolMetadataCopyWithImpl<$Res, ParsedPoolMetadata>;
@useResult
$Res call({
 String url, String hashHex
});



}

/// @nodoc
class _$ParsedPoolMetadataCopyWithImpl<$Res,$Val extends ParsedPoolMetadata> implements $ParsedPoolMetadataCopyWith<$Res> {
  _$ParsedPoolMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_value.copyWith(
url: null == url ? _value.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _value.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedPoolMetadataImplCopyWith<$Res> implements $ParsedPoolMetadataCopyWith<$Res> {
  factory _$$ParsedPoolMetadataImplCopyWith(_$ParsedPoolMetadataImpl value, $Res Function(_$ParsedPoolMetadataImpl) then) = __$$ParsedPoolMetadataImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String url, String hashHex
});



}

/// @nodoc
class __$$ParsedPoolMetadataImplCopyWithImpl<$Res> extends _$ParsedPoolMetadataCopyWithImpl<$Res, _$ParsedPoolMetadataImpl> implements _$$ParsedPoolMetadataImplCopyWith<$Res> {
  __$$ParsedPoolMetadataImplCopyWithImpl(_$ParsedPoolMetadataImpl _value, $Res Function(_$ParsedPoolMetadataImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_$ParsedPoolMetadataImpl(
url: null == url ? _value.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _value.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ParsedPoolMetadataImpl extends _ParsedPoolMetadata  {
   _$ParsedPoolMetadataImpl({required this.url, required this.hashHex}): super._();

  

@override final  String url;
@override final  String hashHex;

@override
String toString() {
  return 'ParsedPoolMetadata(url: $url, hashHex: $hashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedPoolMetadataImpl&&(identical(other.url, url) || other.url == url)&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,url,hashHex);

/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedPoolMetadataImplCopyWith<_$ParsedPoolMetadataImpl> get copyWith => __$$ParsedPoolMetadataImplCopyWithImpl<_$ParsedPoolMetadataImpl>(this, _$identity);








}


abstract class _ParsedPoolMetadata extends ParsedPoolMetadata {
   factory _ParsedPoolMetadata({required final  String url, required final  String hashHex}) = _$ParsedPoolMetadataImpl;
   _ParsedPoolMetadata._(): super._();

  

@override String get url;@override String get hashHex;
/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedPoolMetadataImplCopyWith<_$ParsedPoolMetadataImpl> get copyWith => throw _privateConstructorUsedError;

}
