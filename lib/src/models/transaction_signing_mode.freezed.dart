// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_signing_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionSigningModes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionSigningModesCopyWith<$Res> {
  factory $TransactionSigningModesCopyWith(TransactionSigningModes value,
          $Res Function(TransactionSigningModes) then) =
      _$TransactionSigningModesCopyWithImpl<$Res, TransactionSigningModes>;
}

/// @nodoc
class _$TransactionSigningModesCopyWithImpl<$Res,
        $Val extends TransactionSigningModes>
    implements $TransactionSigningModesCopyWith<$Res> {
  _$TransactionSigningModesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrdinaryTransactionImplCopyWith<$Res> {
  factory _$$OrdinaryTransactionImplCopyWith(_$OrdinaryTransactionImpl value,
          $Res Function(_$OrdinaryTransactionImpl) then) =
      __$$OrdinaryTransactionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrdinaryTransactionImplCopyWithImpl<$Res>
    extends _$TransactionSigningModesCopyWithImpl<$Res,
        _$OrdinaryTransactionImpl>
    implements _$$OrdinaryTransactionImplCopyWith<$Res> {
  __$$OrdinaryTransactionImplCopyWithImpl(_$OrdinaryTransactionImpl _value,
      $Res Function(_$OrdinaryTransactionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrdinaryTransactionImpl extends OrdinaryTransaction {
  const _$OrdinaryTransactionImpl() : super._();

  @override
  String toString() {
    return 'TransactionSigningModes.ordinaryTransaction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdinaryTransactionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) {
    return ordinaryTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) {
    return ordinaryTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) {
    if (ordinaryTransaction != null) {
      return ordinaryTransaction();
    }
    return orElse();
  }
}

abstract class OrdinaryTransaction extends TransactionSigningModes {
  const factory OrdinaryTransaction() = _$OrdinaryTransactionImpl;
  const OrdinaryTransaction._() : super._();
}

/// @nodoc
abstract class _$$MultisigTransactionImplCopyWith<$Res> {
  factory _$$MultisigTransactionImplCopyWith(_$MultisigTransactionImpl value,
          $Res Function(_$MultisigTransactionImpl) then) =
      __$$MultisigTransactionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultisigTransactionImplCopyWithImpl<$Res>
    extends _$TransactionSigningModesCopyWithImpl<$Res,
        _$MultisigTransactionImpl>
    implements _$$MultisigTransactionImplCopyWith<$Res> {
  __$$MultisigTransactionImplCopyWithImpl(_$MultisigTransactionImpl _value,
      $Res Function(_$MultisigTransactionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MultisigTransactionImpl extends MultisigTransaction {
  const _$MultisigTransactionImpl() : super._();

  @override
  String toString() {
    return 'TransactionSigningModes.multisigTransaction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultisigTransactionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) {
    return multisigTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) {
    return multisigTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) {
    if (multisigTransaction != null) {
      return multisigTransaction();
    }
    return orElse();
  }
}

abstract class MultisigTransaction extends TransactionSigningModes {
  const factory MultisigTransaction() = _$MultisigTransactionImpl;
  const MultisigTransaction._() : super._();
}

/// @nodoc
abstract class _$$PoolRegistrationAsOwnerImplCopyWith<$Res> {
  factory _$$PoolRegistrationAsOwnerImplCopyWith(
          _$PoolRegistrationAsOwnerImpl value,
          $Res Function(_$PoolRegistrationAsOwnerImpl) then) =
      __$$PoolRegistrationAsOwnerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoolRegistrationAsOwnerImplCopyWithImpl<$Res>
    extends _$TransactionSigningModesCopyWithImpl<$Res,
        _$PoolRegistrationAsOwnerImpl>
    implements _$$PoolRegistrationAsOwnerImplCopyWith<$Res> {
  __$$PoolRegistrationAsOwnerImplCopyWithImpl(
      _$PoolRegistrationAsOwnerImpl _value,
      $Res Function(_$PoolRegistrationAsOwnerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PoolRegistrationAsOwnerImpl extends PoolRegistrationAsOwner {
  const _$PoolRegistrationAsOwnerImpl() : super._();

  @override
  String toString() {
    return 'TransactionSigningModes.poolRegistrationAsOwner()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRegistrationAsOwnerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) {
    return poolRegistrationAsOwner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) {
    return poolRegistrationAsOwner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) {
    if (poolRegistrationAsOwner != null) {
      return poolRegistrationAsOwner();
    }
    return orElse();
  }
}

abstract class PoolRegistrationAsOwner extends TransactionSigningModes {
  const factory PoolRegistrationAsOwner() = _$PoolRegistrationAsOwnerImpl;
  const PoolRegistrationAsOwner._() : super._();
}

/// @nodoc
abstract class _$$PoolRegistrationAsOperatorImplCopyWith<$Res> {
  factory _$$PoolRegistrationAsOperatorImplCopyWith(
          _$PoolRegistrationAsOperatorImpl value,
          $Res Function(_$PoolRegistrationAsOperatorImpl) then) =
      __$$PoolRegistrationAsOperatorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoolRegistrationAsOperatorImplCopyWithImpl<$Res>
    extends _$TransactionSigningModesCopyWithImpl<$Res,
        _$PoolRegistrationAsOperatorImpl>
    implements _$$PoolRegistrationAsOperatorImplCopyWith<$Res> {
  __$$PoolRegistrationAsOperatorImplCopyWithImpl(
      _$PoolRegistrationAsOperatorImpl _value,
      $Res Function(_$PoolRegistrationAsOperatorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PoolRegistrationAsOperatorImpl extends PoolRegistrationAsOperator {
  const _$PoolRegistrationAsOperatorImpl() : super._();

  @override
  String toString() {
    return 'TransactionSigningModes.poolRegistrationAsOperator()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRegistrationAsOperatorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) {
    return poolRegistrationAsOperator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) {
    return poolRegistrationAsOperator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) {
    if (poolRegistrationAsOperator != null) {
      return poolRegistrationAsOperator();
    }
    return orElse();
  }
}

abstract class PoolRegistrationAsOperator extends TransactionSigningModes {
  const factory PoolRegistrationAsOperator() = _$PoolRegistrationAsOperatorImpl;
  const PoolRegistrationAsOperator._() : super._();
}

/// @nodoc
abstract class _$$PlutusTransactionImplCopyWith<$Res> {
  factory _$$PlutusTransactionImplCopyWith(_$PlutusTransactionImpl value,
          $Res Function(_$PlutusTransactionImpl) then) =
      __$$PlutusTransactionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlutusTransactionImplCopyWithImpl<$Res>
    extends _$TransactionSigningModesCopyWithImpl<$Res, _$PlutusTransactionImpl>
    implements _$$PlutusTransactionImplCopyWith<$Res> {
  __$$PlutusTransactionImplCopyWithImpl(_$PlutusTransactionImpl _value,
      $Res Function(_$PlutusTransactionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlutusTransactionImpl extends PlutusTransaction {
  const _$PlutusTransactionImpl() : super._();

  @override
  String toString() {
    return 'TransactionSigningModes.plutusTransaction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlutusTransactionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordinaryTransaction,
    required TResult Function() multisigTransaction,
    required TResult Function() poolRegistrationAsOwner,
    required TResult Function() poolRegistrationAsOperator,
    required TResult Function() plutusTransaction,
  }) {
    return plutusTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordinaryTransaction,
    TResult? Function()? multisigTransaction,
    TResult? Function()? poolRegistrationAsOwner,
    TResult? Function()? poolRegistrationAsOperator,
    TResult? Function()? plutusTransaction,
  }) {
    return plutusTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordinaryTransaction,
    TResult Function()? multisigTransaction,
    TResult Function()? poolRegistrationAsOwner,
    TResult Function()? poolRegistrationAsOperator,
    TResult Function()? plutusTransaction,
    required TResult orElse(),
  }) {
    if (plutusTransaction != null) {
      return plutusTransaction();
    }
    return orElse();
  }
}

abstract class PlutusTransaction extends TransactionSigningModes {
  const factory PlutusTransaction() = _$PlutusTransactionImpl;
  const PlutusTransaction._() : super._();
}
