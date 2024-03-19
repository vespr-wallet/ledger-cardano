// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote_delegation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCVoteDelegation {
  int get weight => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> voteKeyPath, int weight) path,
    required TResult Function(String voteKey, int weight) key,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> voteKeyPath, int weight)? path,
    TResult? Function(String voteKey, int weight)? key,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> voteKeyPath, int weight)? path,
    TResult Function(String voteKey, int weight)? key,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedCVoteDelegationCopyWith<ParsedCVoteDelegation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedCVoteDelegationCopyWith<$Res> {
  factory $ParsedCVoteDelegationCopyWith(ParsedCVoteDelegation value,
          $Res Function(ParsedCVoteDelegation) then) =
      _$ParsedCVoteDelegationCopyWithImpl<$Res, ParsedCVoteDelegation>;
  @useResult
  $Res call({int weight});
}

/// @nodoc
class _$ParsedCVoteDelegationCopyWithImpl<$Res,
        $Val extends ParsedCVoteDelegation>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  _$ParsedCVoteDelegationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathDelegationImplCopyWith<$Res>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  factory _$$PathDelegationImplCopyWith(_$PathDelegationImpl value,
          $Res Function(_$PathDelegationImpl) then) =
      __$$PathDelegationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> voteKeyPath, int weight});
}

/// @nodoc
class __$$PathDelegationImplCopyWithImpl<$Res>
    extends _$ParsedCVoteDelegationCopyWithImpl<$Res, _$PathDelegationImpl>
    implements _$$PathDelegationImplCopyWith<$Res> {
  __$$PathDelegationImplCopyWithImpl(
      _$PathDelegationImpl _value, $Res Function(_$PathDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteKeyPath = null,
    Object? weight = null,
  }) {
    return _then(_$PathDelegationImpl(
      voteKeyPath: null == voteKeyPath
          ? _value._voteKeyPath
          : voteKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PathDelegationImpl extends PathDelegation {
  const _$PathDelegationImpl(
      {required final List<int> voteKeyPath, required this.weight})
      : _voteKeyPath = voteKeyPath,
        super._();

  final List<int> _voteKeyPath;
  @override
  List<int> get voteKeyPath {
    if (_voteKeyPath is EqualUnmodifiableListView) return _voteKeyPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voteKeyPath);
  }

  @override
  final int weight;

  @override
  String toString() {
    return 'ParsedCVoteDelegation.path(voteKeyPath: $voteKeyPath, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathDelegationImpl &&
            const DeepCollectionEquality()
                .equals(other._voteKeyPath, _voteKeyPath) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_voteKeyPath), weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathDelegationImplCopyWith<_$PathDelegationImpl> get copyWith =>
      __$$PathDelegationImplCopyWithImpl<_$PathDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> voteKeyPath, int weight) path,
    required TResult Function(String voteKey, int weight) key,
  }) {
    return path(voteKeyPath, weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> voteKeyPath, int weight)? path,
    TResult? Function(String voteKey, int weight)? key,
  }) {
    return path?.call(voteKeyPath, weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> voteKeyPath, int weight)? path,
    TResult Function(String voteKey, int weight)? key,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(voteKeyPath, weight);
    }
    return orElse();
  }
}

abstract class PathDelegation extends ParsedCVoteDelegation {
  const factory PathDelegation(
      {required final List<int> voteKeyPath,
      required final int weight}) = _$PathDelegationImpl;
  const PathDelegation._() : super._();

  List<int> get voteKeyPath;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$PathDelegationImplCopyWith<_$PathDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyDelegationImplCopyWith<$Res>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  factory _$$KeyDelegationImplCopyWith(
          _$KeyDelegationImpl value, $Res Function(_$KeyDelegationImpl) then) =
      __$$KeyDelegationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String voteKey, int weight});
}

/// @nodoc
class __$$KeyDelegationImplCopyWithImpl<$Res>
    extends _$ParsedCVoteDelegationCopyWithImpl<$Res, _$KeyDelegationImpl>
    implements _$$KeyDelegationImplCopyWith<$Res> {
  __$$KeyDelegationImplCopyWithImpl(
      _$KeyDelegationImpl _value, $Res Function(_$KeyDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteKey = null,
    Object? weight = null,
  }) {
    return _then(_$KeyDelegationImpl(
      voteKey: null == voteKey
          ? _value.voteKey
          : voteKey // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$KeyDelegationImpl extends KeyDelegation {
  const _$KeyDelegationImpl({required this.voteKey, required this.weight})
      : super._();

  @override
  final String voteKey;
  @override
  final int weight;

  @override
  String toString() {
    return 'ParsedCVoteDelegation.key(voteKey: $voteKey, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyDelegationImpl &&
            (identical(other.voteKey, voteKey) || other.voteKey == voteKey) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteKey, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyDelegationImplCopyWith<_$KeyDelegationImpl> get copyWith =>
      __$$KeyDelegationImplCopyWithImpl<_$KeyDelegationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> voteKeyPath, int weight) path,
    required TResult Function(String voteKey, int weight) key,
  }) {
    return key(voteKey, weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> voteKeyPath, int weight)? path,
    TResult? Function(String voteKey, int weight)? key,
  }) {
    return key?.call(voteKey, weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> voteKeyPath, int weight)? path,
    TResult Function(String voteKey, int weight)? key,
    required TResult orElse(),
  }) {
    if (key != null) {
      return key(voteKey, weight);
    }
    return orElse();
  }
}

abstract class KeyDelegation extends ParsedCVoteDelegation {
  const factory KeyDelegation(
      {required final String voteKey,
      required final int weight}) = _$KeyDelegationImpl;
  const KeyDelegation._() : super._();

  String get voteKey;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$KeyDelegationImplCopyWith<_$KeyDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
