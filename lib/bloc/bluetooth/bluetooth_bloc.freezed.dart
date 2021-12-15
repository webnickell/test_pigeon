// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bluetooth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BluetoothEventTearOff {
  const _$BluetoothEventTearOff();

  CheckStatusBluetoothEvent checkStatus() {
    return const CheckStatusBluetoothEvent();
  }

  EnableBluetoothEvent enable() {
    return const EnableBluetoothEvent();
  }

  DisableBluetoothEvent disable() {
    return const DisableBluetoothEvent();
  }
}

/// @nodoc
const $BluetoothEvent = _$BluetoothEventTearOff();

/// @nodoc
mixin _$BluetoothEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function() enable,
    required TResult Function() disable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function()? enable,
    TResult Function()? disable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatusBluetoothEvent value) checkStatus,
    required TResult Function(EnableBluetoothEvent value) enable,
    required TResult Function(DisableBluetoothEvent value) disable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatusBluetoothEvent value)? checkStatus,
    TResult Function(EnableBluetoothEvent value)? enable,
    TResult Function(DisableBluetoothEvent value)? disable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothEventCopyWith<$Res> {
  factory $BluetoothEventCopyWith(
          BluetoothEvent value, $Res Function(BluetoothEvent) then) =
      _$BluetoothEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BluetoothEventCopyWithImpl<$Res>
    implements $BluetoothEventCopyWith<$Res> {
  _$BluetoothEventCopyWithImpl(this._value, this._then);

  final BluetoothEvent _value;
  // ignore: unused_field
  final $Res Function(BluetoothEvent) _then;
}

/// @nodoc
abstract class $CheckStatusBluetoothEventCopyWith<$Res> {
  factory $CheckStatusBluetoothEventCopyWith(CheckStatusBluetoothEvent value,
          $Res Function(CheckStatusBluetoothEvent) then) =
      _$CheckStatusBluetoothEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckStatusBluetoothEventCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements $CheckStatusBluetoothEventCopyWith<$Res> {
  _$CheckStatusBluetoothEventCopyWithImpl(CheckStatusBluetoothEvent _value,
      $Res Function(CheckStatusBluetoothEvent) _then)
      : super(_value, (v) => _then(v as CheckStatusBluetoothEvent));

  @override
  CheckStatusBluetoothEvent get _value =>
      super._value as CheckStatusBluetoothEvent;
}

/// @nodoc

class _$CheckStatusBluetoothEvent extends CheckStatusBluetoothEvent {
  const _$CheckStatusBluetoothEvent() : super._();

  @override
  String toString() {
    return 'BluetoothEvent.checkStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckStatusBluetoothEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function() enable,
    required TResult Function() disable,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function()? enable,
    TResult Function()? disable,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatusBluetoothEvent value) checkStatus,
    required TResult Function(EnableBluetoothEvent value) enable,
    required TResult Function(DisableBluetoothEvent value) disable,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatusBluetoothEvent value)? checkStatus,
    TResult Function(EnableBluetoothEvent value)? enable,
    TResult Function(DisableBluetoothEvent value)? disable,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class CheckStatusBluetoothEvent extends BluetoothEvent {
  const factory CheckStatusBluetoothEvent() = _$CheckStatusBluetoothEvent;
  const CheckStatusBluetoothEvent._() : super._();
}

/// @nodoc
abstract class $EnableBluetoothEventCopyWith<$Res> {
  factory $EnableBluetoothEventCopyWith(EnableBluetoothEvent value,
          $Res Function(EnableBluetoothEvent) then) =
      _$EnableBluetoothEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnableBluetoothEventCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements $EnableBluetoothEventCopyWith<$Res> {
  _$EnableBluetoothEventCopyWithImpl(
      EnableBluetoothEvent _value, $Res Function(EnableBluetoothEvent) _then)
      : super(_value, (v) => _then(v as EnableBluetoothEvent));

  @override
  EnableBluetoothEvent get _value => super._value as EnableBluetoothEvent;
}

/// @nodoc

class _$EnableBluetoothEvent extends EnableBluetoothEvent {
  const _$EnableBluetoothEvent() : super._();

  @override
  String toString() {
    return 'BluetoothEvent.enable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EnableBluetoothEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function() enable,
    required TResult Function() disable,
  }) {
    return enable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function()? enable,
    TResult Function()? disable,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatusBluetoothEvent value) checkStatus,
    required TResult Function(EnableBluetoothEvent value) enable,
    required TResult Function(DisableBluetoothEvent value) disable,
  }) {
    return enable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatusBluetoothEvent value)? checkStatus,
    TResult Function(EnableBluetoothEvent value)? enable,
    TResult Function(DisableBluetoothEvent value)? disable,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable(this);
    }
    return orElse();
  }
}

abstract class EnableBluetoothEvent extends BluetoothEvent {
  const factory EnableBluetoothEvent() = _$EnableBluetoothEvent;
  const EnableBluetoothEvent._() : super._();
}

/// @nodoc
abstract class $DisableBluetoothEventCopyWith<$Res> {
  factory $DisableBluetoothEventCopyWith(DisableBluetoothEvent value,
          $Res Function(DisableBluetoothEvent) then) =
      _$DisableBluetoothEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisableBluetoothEventCopyWithImpl<$Res>
    extends _$BluetoothEventCopyWithImpl<$Res>
    implements $DisableBluetoothEventCopyWith<$Res> {
  _$DisableBluetoothEventCopyWithImpl(
      DisableBluetoothEvent _value, $Res Function(DisableBluetoothEvent) _then)
      : super(_value, (v) => _then(v as DisableBluetoothEvent));

  @override
  DisableBluetoothEvent get _value => super._value as DisableBluetoothEvent;
}

/// @nodoc

class _$DisableBluetoothEvent extends DisableBluetoothEvent {
  const _$DisableBluetoothEvent() : super._();

  @override
  String toString() {
    return 'BluetoothEvent.disable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DisableBluetoothEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function() enable,
    required TResult Function() disable,
  }) {
    return disable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function()? enable,
    TResult Function()? disable,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatusBluetoothEvent value) checkStatus,
    required TResult Function(EnableBluetoothEvent value) enable,
    required TResult Function(DisableBluetoothEvent value) disable,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatusBluetoothEvent value)? checkStatus,
    TResult Function(EnableBluetoothEvent value)? enable,
    TResult Function(DisableBluetoothEvent value)? disable,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class DisableBluetoothEvent extends BluetoothEvent {
  const factory DisableBluetoothEvent() = _$DisableBluetoothEvent;
  const DisableBluetoothEvent._() : super._();
}

/// @nodoc
class _$BluetoothStateTearOff {
  const _$BluetoothStateTearOff();

  _BluetoothState call({required bool isEnabled, required bool isAvailable}) {
    return _BluetoothState(
      isEnabled: isEnabled,
      isAvailable: isAvailable,
    );
  }
}

/// @nodoc
const $BluetoothState = _$BluetoothStateTearOff();

/// @nodoc
mixin _$BluetoothState {
  bool get isEnabled => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BluetoothStateCopyWith<BluetoothState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothStateCopyWith<$Res> {
  factory $BluetoothStateCopyWith(
          BluetoothState value, $Res Function(BluetoothState) then) =
      _$BluetoothStateCopyWithImpl<$Res>;
  $Res call({bool isEnabled, bool isAvailable});
}

/// @nodoc
class _$BluetoothStateCopyWithImpl<$Res>
    implements $BluetoothStateCopyWith<$Res> {
  _$BluetoothStateCopyWithImpl(this._value, this._then);

  final BluetoothState _value;
  // ignore: unused_field
  final $Res Function(BluetoothState) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BluetoothStateCopyWith<$Res>
    implements $BluetoothStateCopyWith<$Res> {
  factory _$BluetoothStateCopyWith(
          _BluetoothState value, $Res Function(_BluetoothState) then) =
      __$BluetoothStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnabled, bool isAvailable});
}

/// @nodoc
class __$BluetoothStateCopyWithImpl<$Res>
    extends _$BluetoothStateCopyWithImpl<$Res>
    implements _$BluetoothStateCopyWith<$Res> {
  __$BluetoothStateCopyWithImpl(
      _BluetoothState _value, $Res Function(_BluetoothState) _then)
      : super(_value, (v) => _then(v as _BluetoothState));

  @override
  _BluetoothState get _value => super._value as _BluetoothState;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_BluetoothState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BluetoothState extends _BluetoothState {
  const _$_BluetoothState({required this.isEnabled, required this.isAvailable})
      : super._();

  @override
  final bool isEnabled;
  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'BluetoothState(isEnabled: $isEnabled, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BluetoothState &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.isAvailable, isAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isAvailable, isAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(isAvailable);

  @JsonKey(ignore: true)
  @override
  _$BluetoothStateCopyWith<_BluetoothState> get copyWith =>
      __$BluetoothStateCopyWithImpl<_BluetoothState>(this, _$identity);
}

abstract class _BluetoothState extends BluetoothState {
  const factory _BluetoothState(
      {required bool isEnabled, required bool isAvailable}) = _$_BluetoothState;
  const _BluetoothState._() : super._();

  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  bool get isAvailable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BluetoothStateCopyWith<_BluetoothState> get copyWith =>
      throw _privateConstructorUsedError;
}
