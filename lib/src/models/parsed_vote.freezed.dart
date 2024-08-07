// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedVote {

 ParsedGovActionId get govActionId => throw _privateConstructorUsedError; ParsedVotingProcedure get votingProcedure => throw _privateConstructorUsedError;







/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedVoteCopyWith<ParsedVote> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedVoteCopyWith<$Res>  {
  factory $ParsedVoteCopyWith(ParsedVote value, $Res Function(ParsedVote) then) = _$ParsedVoteCopyWithImpl<$Res, ParsedVote>;
@useResult
$Res call({
 ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure
});


$ParsedGovActionIdCopyWith<$Res> get govActionId;$ParsedVotingProcedureCopyWith<$Res> get votingProcedure;
}

/// @nodoc
class _$ParsedVoteCopyWithImpl<$Res,$Val extends ParsedVote> implements $ParsedVoteCopyWith<$Res> {
  _$ParsedVoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? govActionId = null,Object? votingProcedure = null,}) {
  return _then(_value.copyWith(
govActionId: null == govActionId ? _value.govActionId : govActionId // ignore: cast_nullable_to_non_nullable
as ParsedGovActionId,votingProcedure: null == votingProcedure ? _value.votingProcedure : votingProcedure // ignore: cast_nullable_to_non_nullable
as ParsedVotingProcedure,
  )as $Val);
}
/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedGovActionIdCopyWith<$Res> get govActionId {
  
  return $ParsedGovActionIdCopyWith<$Res>(_value.govActionId, (value) {
    return _then(_value.copyWith(govActionId: value) as $Val);
  });
}/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedVotingProcedureCopyWith<$Res> get votingProcedure {
  
  return $ParsedVotingProcedureCopyWith<$Res>(_value.votingProcedure, (value) {
    return _then(_value.copyWith(votingProcedure: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedVoteImplCopyWith<$Res> implements $ParsedVoteCopyWith<$Res> {
  factory _$$ParsedVoteImplCopyWith(_$ParsedVoteImpl value, $Res Function(_$ParsedVoteImpl) then) = __$$ParsedVoteImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure
});


@override $ParsedGovActionIdCopyWith<$Res> get govActionId;@override $ParsedVotingProcedureCopyWith<$Res> get votingProcedure;
}

/// @nodoc
class __$$ParsedVoteImplCopyWithImpl<$Res> extends _$ParsedVoteCopyWithImpl<$Res, _$ParsedVoteImpl> implements _$$ParsedVoteImplCopyWith<$Res> {
  __$$ParsedVoteImplCopyWithImpl(_$ParsedVoteImpl _value, $Res Function(_$ParsedVoteImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? govActionId = null,Object? votingProcedure = null,}) {
  return _then(_$ParsedVoteImpl(
govActionId: null == govActionId ? _value.govActionId : govActionId // ignore: cast_nullable_to_non_nullable
as ParsedGovActionId,votingProcedure: null == votingProcedure ? _value.votingProcedure : votingProcedure // ignore: cast_nullable_to_non_nullable
as ParsedVotingProcedure,
  ));
}


}

/// @nodoc


class _$ParsedVoteImpl extends _ParsedVote  {
   _$ParsedVoteImpl({required this.govActionId, required this.votingProcedure}): super._();

  

@override final  ParsedGovActionId govActionId;
@override final  ParsedVotingProcedure votingProcedure;

@override
String toString() {
  return 'ParsedVote(govActionId: $govActionId, votingProcedure: $votingProcedure)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedVoteImpl&&(identical(other.govActionId, govActionId) || other.govActionId == govActionId)&&(identical(other.votingProcedure, votingProcedure) || other.votingProcedure == votingProcedure));
}


@override
int get hashCode => Object.hash(runtimeType,govActionId,votingProcedure);

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedVoteImplCopyWith<_$ParsedVoteImpl> get copyWith => __$$ParsedVoteImplCopyWithImpl<_$ParsedVoteImpl>(this, _$identity);








}


abstract class _ParsedVote extends ParsedVote {
   factory _ParsedVote({required final  ParsedGovActionId govActionId, required final  ParsedVotingProcedure votingProcedure}) = _$ParsedVoteImpl;
   _ParsedVote._(): super._();

  

@override ParsedGovActionId get govActionId;@override ParsedVotingProcedure get votingProcedure;
/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedVoteImplCopyWith<_$ParsedVoteImpl> get copyWith => throw _privateConstructorUsedError;

}
