// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatsEventTearOff {
  const _$ChatsEventTearOff();

  FindDevicesChatsEvent findDevices() {
    return const FindDevicesChatsEvent();
  }
}

/// @nodoc
const $ChatsEvent = _$ChatsEventTearOff();

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findDevices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindDevicesChatsEvent value) findDevices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindDevicesChatsEvent value)? findDevices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res> implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  final ChatsEvent _value;
  // ignore: unused_field
  final $Res Function(ChatsEvent) _then;
}

/// @nodoc
abstract class $FindDevicesChatsEventCopyWith<$Res> {
  factory $FindDevicesChatsEventCopyWith(FindDevicesChatsEvent value,
          $Res Function(FindDevicesChatsEvent) then) =
      _$FindDevicesChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindDevicesChatsEventCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements $FindDevicesChatsEventCopyWith<$Res> {
  _$FindDevicesChatsEventCopyWithImpl(
      FindDevicesChatsEvent _value, $Res Function(FindDevicesChatsEvent) _then)
      : super(_value, (v) => _then(v as FindDevicesChatsEvent));

  @override
  FindDevicesChatsEvent get _value => super._value as FindDevicesChatsEvent;
}

/// @nodoc

class _$FindDevicesChatsEvent extends FindDevicesChatsEvent {
  const _$FindDevicesChatsEvent() : super._();

  @override
  String toString() {
    return 'ChatsEvent.findDevices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindDevicesChatsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findDevices,
  }) {
    return findDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findDevices,
    required TResult orElse(),
  }) {
    if (findDevices != null) {
      return findDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindDevicesChatsEvent value) findDevices,
  }) {
    return findDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindDevicesChatsEvent value)? findDevices,
    required TResult orElse(),
  }) {
    if (findDevices != null) {
      return findDevices(this);
    }
    return orElse();
  }
}

abstract class FindDevicesChatsEvent extends ChatsEvent {
  const factory FindDevicesChatsEvent() = _$FindDevicesChatsEvent;
  const FindDevicesChatsEvent._() : super._();
}

/// @nodoc
class _$ChatsStateTearOff {
  const _$ChatsStateTearOff();

  InitialChatsState initial() {
    return const InitialChatsState();
  }

  LoadingChatsState loading() {
    return const LoadingChatsState();
  }

  DataChatsState data({required List<ChatInfo> chats}) {
    return DataChatsState(
      chats: chats,
    );
  }

  ErrorChatsState error() {
    return const ErrorChatsState();
  }
}

/// @nodoc
const $ChatsState = _$ChatsStateTearOff();

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatInfo> chats) data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatInfo> chats)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatsState value) initial,
    required TResult Function(LoadingChatsState value) loading,
    required TResult Function(DataChatsState value) data,
    required TResult Function(ErrorChatsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatsState value)? initial,
    TResult Function(LoadingChatsState value)? loading,
    TResult Function(DataChatsState value)? data,
    TResult Function(ErrorChatsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res> implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  final ChatsState _value;
  // ignore: unused_field
  final $Res Function(ChatsState) _then;
}

/// @nodoc
abstract class $InitialChatsStateCopyWith<$Res> {
  factory $InitialChatsStateCopyWith(
          InitialChatsState value, $Res Function(InitialChatsState) then) =
      _$InitialChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialChatsStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res>
    implements $InitialChatsStateCopyWith<$Res> {
  _$InitialChatsStateCopyWithImpl(
      InitialChatsState _value, $Res Function(InitialChatsState) _then)
      : super(_value, (v) => _then(v as InitialChatsState));

  @override
  InitialChatsState get _value => super._value as InitialChatsState;
}

/// @nodoc

class _$InitialChatsState extends InitialChatsState {
  const _$InitialChatsState() : super._();

  @override
  String toString() {
    return 'ChatsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialChatsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatInfo> chats) data,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatInfo> chats)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatsState value) initial,
    required TResult Function(LoadingChatsState value) loading,
    required TResult Function(DataChatsState value) data,
    required TResult Function(ErrorChatsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatsState value)? initial,
    TResult Function(LoadingChatsState value)? loading,
    TResult Function(DataChatsState value)? data,
    TResult Function(ErrorChatsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialChatsState extends ChatsState {
  const factory InitialChatsState() = _$InitialChatsState;
  const InitialChatsState._() : super._();
}

/// @nodoc
abstract class $LoadingChatsStateCopyWith<$Res> {
  factory $LoadingChatsStateCopyWith(
          LoadingChatsState value, $Res Function(LoadingChatsState) then) =
      _$LoadingChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingChatsStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res>
    implements $LoadingChatsStateCopyWith<$Res> {
  _$LoadingChatsStateCopyWithImpl(
      LoadingChatsState _value, $Res Function(LoadingChatsState) _then)
      : super(_value, (v) => _then(v as LoadingChatsState));

  @override
  LoadingChatsState get _value => super._value as LoadingChatsState;
}

/// @nodoc

class _$LoadingChatsState extends LoadingChatsState {
  const _$LoadingChatsState() : super._();

  @override
  String toString() {
    return 'ChatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingChatsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatInfo> chats) data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatInfo> chats)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatsState value) initial,
    required TResult Function(LoadingChatsState value) loading,
    required TResult Function(DataChatsState value) data,
    required TResult Function(ErrorChatsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatsState value)? initial,
    TResult Function(LoadingChatsState value)? loading,
    TResult Function(DataChatsState value)? data,
    TResult Function(ErrorChatsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChatsState extends ChatsState {
  const factory LoadingChatsState() = _$LoadingChatsState;
  const LoadingChatsState._() : super._();
}

/// @nodoc
abstract class $DataChatsStateCopyWith<$Res> {
  factory $DataChatsStateCopyWith(
          DataChatsState value, $Res Function(DataChatsState) then) =
      _$DataChatsStateCopyWithImpl<$Res>;
  $Res call({List<ChatInfo> chats});
}

/// @nodoc
class _$DataChatsStateCopyWithImpl<$Res> extends _$ChatsStateCopyWithImpl<$Res>
    implements $DataChatsStateCopyWith<$Res> {
  _$DataChatsStateCopyWithImpl(
      DataChatsState _value, $Res Function(DataChatsState) _then)
      : super(_value, (v) => _then(v as DataChatsState));

  @override
  DataChatsState get _value => super._value as DataChatsState;

  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(DataChatsState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatInfo>,
    ));
  }
}

/// @nodoc

class _$DataChatsState extends DataChatsState {
  const _$DataChatsState({required this.chats}) : super._();

  @override
  final List<ChatInfo> chats;

  @override
  String toString() {
    return 'ChatsState.data(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataChatsState &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chats);

  @JsonKey(ignore: true)
  @override
  $DataChatsStateCopyWith<DataChatsState> get copyWith =>
      _$DataChatsStateCopyWithImpl<DataChatsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatInfo> chats) data,
    required TResult Function() error,
  }) {
    return data(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatInfo> chats)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatsState value) initial,
    required TResult Function(LoadingChatsState value) loading,
    required TResult Function(DataChatsState value) data,
    required TResult Function(ErrorChatsState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatsState value)? initial,
    TResult Function(LoadingChatsState value)? loading,
    TResult Function(DataChatsState value)? data,
    TResult Function(ErrorChatsState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataChatsState extends ChatsState {
  const factory DataChatsState({required List<ChatInfo> chats}) =
      _$DataChatsState;
  const DataChatsState._() : super._();

  List<ChatInfo> get chats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataChatsStateCopyWith<DataChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorChatsStateCopyWith<$Res> {
  factory $ErrorChatsStateCopyWith(
          ErrorChatsState value, $Res Function(ErrorChatsState) then) =
      _$ErrorChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorChatsStateCopyWithImpl<$Res> extends _$ChatsStateCopyWithImpl<$Res>
    implements $ErrorChatsStateCopyWith<$Res> {
  _$ErrorChatsStateCopyWithImpl(
      ErrorChatsState _value, $Res Function(ErrorChatsState) _then)
      : super(_value, (v) => _then(v as ErrorChatsState));

  @override
  ErrorChatsState get _value => super._value as ErrorChatsState;
}

/// @nodoc

class _$ErrorChatsState extends ErrorChatsState {
  const _$ErrorChatsState() : super._();

  @override
  String toString() {
    return 'ChatsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorChatsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatInfo> chats) data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatInfo> chats)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatsState value) initial,
    required TResult Function(LoadingChatsState value) loading,
    required TResult Function(DataChatsState value) data,
    required TResult Function(ErrorChatsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatsState value)? initial,
    TResult Function(LoadingChatsState value)? loading,
    TResult Function(DataChatsState value)? data,
    TResult Function(ErrorChatsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorChatsState extends ChatsState {
  const factory ErrorChatsState() = _$ErrorChatsState;
  const ErrorChatsState._() : super._();
}
