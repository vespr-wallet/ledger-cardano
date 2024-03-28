// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsReward {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> stakingPath) stakingPath,
    required TResult Function(String stakingScriptHashHex) stakingScriptHashHex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> stakingPath)? stakingPath,
    TResult? Function(String stakingScriptHashHex)? stakingScriptHashHex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> stakingPath)? stakingPath,
    TResult Function(String stakingScriptHashHex)? stakingScriptHashHex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressParamsRewardCopyWith<$Res> {
  factory $AddressParamsRewardCopyWith(
          AddressParamsReward value, $Res Function(AddressParamsReward) then) =
      _$AddressParamsRewardCopyWithImpl<$Res, AddressParamsReward>;
}

/// @nodoc
class _$AddressParamsRewardCopyWithImpl<$Res, $Val extends AddressParamsReward>
    implements $AddressParamsRewardCopyWith<$Res> {
  _$AddressParamsRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddressParamsRewardStakingPathImplCopyWith<$Res> {
  factory _$$AddressParamsRewardStakingPathImplCopyWith(
          _$AddressParamsRewardStakingPathImpl value,
          $Res Function(_$AddressParamsRewardStakingPathImpl) then) =
      __$$AddressParamsRewardStakingPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> stakingPath});
}

/// @nodoc
class __$$AddressParamsRewardStakingPathImplCopyWithImpl<$Res>
    extends _$AddressParamsRewardCopyWithImpl<$Res,
        _$AddressParamsRewardStakingPathImpl>
    implements _$$AddressParamsRewardStakingPathImplCopyWith<$Res> {
  __$$AddressParamsRewardStakingPathImplCopyWithImpl(
      _$AddressParamsRewardStakingPathImpl _value,
      $Res Function(_$AddressParamsRewardStakingPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingPath = null,
  }) {
    return _then(_$AddressParamsRewardStakingPathImpl(
      stakingPath: null == stakingPath
          ? _value._stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AddressParamsRewardStakingPathImpl
    extends AddressParamsRewardStakingPath {
  _$AddressParamsRewardStakingPathImpl({required final List<int> stakingPath})
      : _stakingPath = stakingPath,
        super._();

  final List<int> _stakingPath;
  @override
  List<int> get stakingPath {
    if (_stakingPath is EqualUnmodifiableListView) return _stakingPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stakingPath);
  }

  @override
  String toString() {
    return 'AddressParamsReward.stakingPath(stakingPath: $stakingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsRewardStakingPathImpl &&
            const DeepCollectionEquality()
                .equals(other._stakingPath, _stakingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stakingPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsRewardStakingPathImplCopyWith<
          _$AddressParamsRewardStakingPathImpl>
      get copyWith => __$$AddressParamsRewardStakingPathImplCopyWithImpl<
          _$AddressParamsRewardStakingPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> stakingPath) stakingPath,
    required TResult Function(String stakingScriptHashHex) stakingScriptHashHex,
  }) {
    return stakingPath(this.stakingPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> stakingPath)? stakingPath,
    TResult? Function(String stakingScriptHashHex)? stakingScriptHashHex,
  }) {
    return stakingPath?.call(this.stakingPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> stakingPath)? stakingPath,
    TResult Function(String stakingScriptHashHex)? stakingScriptHashHex,
    required TResult orElse(),
  }) {
    if (stakingPath != null) {
      return stakingPath(this.stakingPath);
    }
    return orElse();
  }
}

abstract class AddressParamsRewardStakingPath extends AddressParamsReward {
  factory AddressParamsRewardStakingPath(
          {required final List<int> stakingPath}) =
      _$AddressParamsRewardStakingPathImpl;
  AddressParamsRewardStakingPath._() : super._();

  List<int> get stakingPath;
  @JsonKey(ignore: true)
  _$$AddressParamsRewardStakingPathImplCopyWith<
          _$AddressParamsRewardStakingPathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<$Res> {
  factory _$$AddressParamsRewardStakingScriptHashHexImplCopyWith(
          _$AddressParamsRewardStakingScriptHashHexImpl value,
          $Res Function(_$AddressParamsRewardStakingScriptHashHexImpl) then) =
      __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stakingScriptHashHex});
}

/// @nodoc
class __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<$Res>
    extends _$AddressParamsRewardCopyWithImpl<$Res,
        _$AddressParamsRewardStakingScriptHashHexImpl>
    implements _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<$Res> {
  __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl(
      _$AddressParamsRewardStakingScriptHashHexImpl _value,
      $Res Function(_$AddressParamsRewardStakingScriptHashHexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingScriptHashHex = null,
  }) {
    return _then(_$AddressParamsRewardStakingScriptHashHexImpl(
      stakingScriptHashHex: null == stakingScriptHashHex
          ? _value.stakingScriptHashHex
          : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressParamsRewardStakingScriptHashHexImpl
    extends AddressParamsRewardStakingScriptHashHex {
  _$AddressParamsRewardStakingScriptHashHexImpl(
      {required this.stakingScriptHashHex})
      : super._();

  @override
  final String stakingScriptHashHex;

  @override
  String toString() {
    return 'AddressParamsReward.stakingScriptHashHex(stakingScriptHashHex: $stakingScriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsRewardStakingScriptHashHexImpl &&
            (identical(other.stakingScriptHashHex, stakingScriptHashHex) ||
                other.stakingScriptHashHex == stakingScriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakingScriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<
          _$AddressParamsRewardStakingScriptHashHexImpl>
      get copyWith =>
          __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<
              _$AddressParamsRewardStakingScriptHashHexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> stakingPath) stakingPath,
    required TResult Function(String stakingScriptHashHex) stakingScriptHashHex,
  }) {
    return stakingScriptHashHex(this.stakingScriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> stakingPath)? stakingPath,
    TResult? Function(String stakingScriptHashHex)? stakingScriptHashHex,
  }) {
    return stakingScriptHashHex?.call(this.stakingScriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> stakingPath)? stakingPath,
    TResult Function(String stakingScriptHashHex)? stakingScriptHashHex,
    required TResult orElse(),
  }) {
    if (stakingScriptHashHex != null) {
      return stakingScriptHashHex(this.stakingScriptHashHex);
    }
    return orElse();
  }
}

abstract class AddressParamsRewardStakingScriptHashHex
    extends AddressParamsReward {
  factory AddressParamsRewardStakingScriptHashHex(
          {required final String stakingScriptHashHex}) =
      _$AddressParamsRewardStakingScriptHashHexImpl;
  AddressParamsRewardStakingScriptHashHex._() : super._();

  String get stakingScriptHashHex;
  @JsonKey(ignore: true)
  _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<
          _$AddressParamsRewardStakingScriptHashHexImpl>
      get copyWith => throw _privateConstructorUsedError;
}
