// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staking_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakingDataSource {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingDataSourceCopyWith<$Res> {
  factory $StakingDataSourceCopyWith(
          StakingDataSource value, $Res Function(StakingDataSource) then) =
      _$StakingDataSourceCopyWithImpl<$Res, StakingDataSource>;
}

/// @nodoc
class _$StakingDataSourceCopyWithImpl<$Res, $Val extends StakingDataSource>
    implements $StakingDataSourceCopyWith<$Res> {
  _$StakingDataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StakingDataSourceNoneImplCopyWith<$Res> {
  factory _$$StakingDataSourceNoneImplCopyWith(
          _$StakingDataSourceNoneImpl value,
          $Res Function(_$StakingDataSourceNoneImpl) then) =
      __$$StakingDataSourceNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StakingDataSourceNoneImplCopyWithImpl<$Res>
    extends _$StakingDataSourceCopyWithImpl<$Res, _$StakingDataSourceNoneImpl>
    implements _$$StakingDataSourceNoneImplCopyWith<$Res> {
  __$$StakingDataSourceNoneImplCopyWithImpl(_$StakingDataSourceNoneImpl _value,
      $Res Function(_$StakingDataSourceNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StakingDataSourceNoneImpl extends StakingDataSourceNone {
  const _$StakingDataSourceNoneImpl() : super._();

  @override
  String toString() {
    return 'StakingDataSource.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataSourceNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }
}

abstract class StakingDataSourceNone extends StakingDataSource {
  const factory StakingDataSourceNone() = _$StakingDataSourceNoneImpl;
  const StakingDataSourceNone._() : super._();
}

/// @nodoc
abstract class _$$StakingDataSourceKeyPathImplCopyWith<$Res> {
  factory _$$StakingDataSourceKeyPathImplCopyWith(
          _$StakingDataSourceKeyPathImpl value,
          $Res Function(_$StakingDataSourceKeyPathImpl) then) =
      __$$StakingDataSourceKeyPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$StakingDataSourceKeyPathImplCopyWithImpl<$Res>
    extends _$StakingDataSourceCopyWithImpl<$Res,
        _$StakingDataSourceKeyPathImpl>
    implements _$$StakingDataSourceKeyPathImplCopyWith<$Res> {
  __$$StakingDataSourceKeyPathImplCopyWithImpl(
      _$StakingDataSourceKeyPathImpl _value,
      $Res Function(_$StakingDataSourceKeyPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$StakingDataSourceKeyPathImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$StakingDataSourceKeyPathImpl extends StakingDataSourceKeyPath {
  const _$StakingDataSourceKeyPathImpl({required final List<int> path})
      : _path = path,
        super._();

  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'StakingDataSource.keyPath(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataSourceKeyPathImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingDataSourceKeyPathImplCopyWith<_$StakingDataSourceKeyPathImpl>
      get copyWith => __$$StakingDataSourceKeyPathImplCopyWithImpl<
          _$StakingDataSourceKeyPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyPath(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyPath?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(path);
    }
    return orElse();
  }
}

abstract class StakingDataSourceKeyPath extends StakingDataSource {
  const factory StakingDataSourceKeyPath({required final List<int> path}) =
      _$StakingDataSourceKeyPathImpl;
  const StakingDataSourceKeyPath._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$StakingDataSourceKeyPathImplCopyWith<_$StakingDataSourceKeyPathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakingDataSourceKeyHashImplCopyWith<$Res> {
  factory _$$StakingDataSourceKeyHashImplCopyWith(
          _$StakingDataSourceKeyHashImpl value,
          $Res Function(_$StakingDataSourceKeyHashImpl) then) =
      __$$StakingDataSourceKeyHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$StakingDataSourceKeyHashImplCopyWithImpl<$Res>
    extends _$StakingDataSourceCopyWithImpl<$Res,
        _$StakingDataSourceKeyHashImpl>
    implements _$$StakingDataSourceKeyHashImplCopyWith<$Res> {
  __$$StakingDataSourceKeyHashImplCopyWithImpl(
      _$StakingDataSourceKeyHashImpl _value,
      $Res Function(_$StakingDataSourceKeyHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$StakingDataSourceKeyHashImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StakingDataSourceKeyHashImpl extends StakingDataSourceKeyHash {
  const _$StakingDataSourceKeyHashImpl({required this.keyHashHex}) : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'StakingDataSource.keyHash(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataSourceKeyHashImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingDataSourceKeyHashImplCopyWith<_$StakingDataSourceKeyHashImpl>
      get copyWith => __$$StakingDataSourceKeyHashImplCopyWithImpl<
          _$StakingDataSourceKeyHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyHash(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyHash?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (keyHash != null) {
      return keyHash(keyHashHex);
    }
    return orElse();
  }
}

abstract class StakingDataSourceKeyHash extends StakingDataSource {
  const factory StakingDataSourceKeyHash({required final String keyHashHex}) =
      _$StakingDataSourceKeyHashImpl;
  const StakingDataSourceKeyHash._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$StakingDataSourceKeyHashImplCopyWith<_$StakingDataSourceKeyHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakingDataSourceBlockchainPointerImplCopyWith<$Res> {
  factory _$$StakingDataSourceBlockchainPointerImplCopyWith(
          _$StakingDataSourceBlockchainPointerImpl value,
          $Res Function(_$StakingDataSourceBlockchainPointerImpl) then) =
      __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int blockIndex, int txIndex, int certificateIndex});
}

/// @nodoc
class __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<$Res>
    extends _$StakingDataSourceCopyWithImpl<$Res,
        _$StakingDataSourceBlockchainPointerImpl>
    implements _$$StakingDataSourceBlockchainPointerImplCopyWith<$Res> {
  __$$StakingDataSourceBlockchainPointerImplCopyWithImpl(
      _$StakingDataSourceBlockchainPointerImpl _value,
      $Res Function(_$StakingDataSourceBlockchainPointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockIndex = null,
    Object? txIndex = null,
    Object? certificateIndex = null,
  }) {
    return _then(_$StakingDataSourceBlockchainPointerImpl(
      blockIndex: null == blockIndex
          ? _value.blockIndex
          : blockIndex // ignore: cast_nullable_to_non_nullable
              as int,
      txIndex: null == txIndex
          ? _value.txIndex
          : txIndex // ignore: cast_nullable_to_non_nullable
              as int,
      certificateIndex: null == certificateIndex
          ? _value.certificateIndex
          : certificateIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StakingDataSourceBlockchainPointerImpl
    extends StakingDataSourceBlockchainPointer {
  const _$StakingDataSourceBlockchainPointerImpl(
      {required this.blockIndex,
      required this.txIndex,
      required this.certificateIndex})
      : super._();

  @override
  final int blockIndex;
  @override
  final int txIndex;
  @override
  final int certificateIndex;

  @override
  String toString() {
    return 'StakingDataSource.blockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataSourceBlockchainPointerImpl &&
            (identical(other.blockIndex, blockIndex) ||
                other.blockIndex == blockIndex) &&
            (identical(other.txIndex, txIndex) || other.txIndex == txIndex) &&
            (identical(other.certificateIndex, certificateIndex) ||
                other.certificateIndex == certificateIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, blockIndex, txIndex, certificateIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingDataSourceBlockchainPointerImplCopyWith<
          _$StakingDataSourceBlockchainPointerImpl>
      get copyWith => __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<
          _$StakingDataSourceBlockchainPointerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return blockchainPointer(blockIndex, txIndex, certificateIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return blockchainPointer?.call(blockIndex, txIndex, certificateIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (blockchainPointer != null) {
      return blockchainPointer(blockIndex, txIndex, certificateIndex);
    }
    return orElse();
  }
}

abstract class StakingDataSourceBlockchainPointer extends StakingDataSource {
  const factory StakingDataSourceBlockchainPointer(
          {required final int blockIndex,
          required final int txIndex,
          required final int certificateIndex}) =
      _$StakingDataSourceBlockchainPointerImpl;
  const StakingDataSourceBlockchainPointer._() : super._();

  int get blockIndex;
  int get txIndex;
  int get certificateIndex;
  @JsonKey(ignore: true)
  _$$StakingDataSourceBlockchainPointerImplCopyWith<
          _$StakingDataSourceBlockchainPointerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakingDataSourceScriptHashImplCopyWith<$Res> {
  factory _$$StakingDataSourceScriptHashImplCopyWith(
          _$StakingDataSourceScriptHashImpl value,
          $Res Function(_$StakingDataSourceScriptHashImpl) then) =
      __$$StakingDataSourceScriptHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class __$$StakingDataSourceScriptHashImplCopyWithImpl<$Res>
    extends _$StakingDataSourceCopyWithImpl<$Res,
        _$StakingDataSourceScriptHashImpl>
    implements _$$StakingDataSourceScriptHashImplCopyWith<$Res> {
  __$$StakingDataSourceScriptHashImplCopyWithImpl(
      _$StakingDataSourceScriptHashImpl _value,
      $Res Function(_$StakingDataSourceScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(_$StakingDataSourceScriptHashImpl(
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StakingDataSourceScriptHashImpl extends StakingDataSourceScriptHash {
  const _$StakingDataSourceScriptHashImpl({required this.scriptHashHex})
      : super._();

  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'StakingDataSource.scriptHash(scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingDataSourceScriptHashImpl &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingDataSourceScriptHashImplCopyWith<_$StakingDataSourceScriptHashImpl>
      get copyWith => __$$StakingDataSourceScriptHashImplCopyWithImpl<
          _$StakingDataSourceScriptHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(int blockIndex, int txIndex, int certificateIndex)
        blockchainPointer,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return scriptHash(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return scriptHash?.call(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(int blockIndex, int txIndex, int certificateIndex)?
        blockchainPointer,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(scriptHashHex);
    }
    return orElse();
  }
}

abstract class StakingDataSourceScriptHash extends StakingDataSource {
  const factory StakingDataSourceScriptHash(
          {required final String scriptHashHex}) =
      _$StakingDataSourceScriptHashImpl;
  const StakingDataSourceScriptHash._() : super._();

  String get scriptHashHex;
  @JsonKey(ignore: true)
  _$$StakingDataSourceScriptHashImplCopyWith<_$StakingDataSourceScriptHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}
