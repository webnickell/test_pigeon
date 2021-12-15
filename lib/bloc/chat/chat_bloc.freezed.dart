// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  ConnectChatEvent connect(String address) {
    return ConnectChatEvent(
      address,
    );
  }

  SetTextChatEvent setText(String value) {
    return SetTextChatEvent(
      value,
    );
  }

  SendChatEvent send() {
    return const SendChatEvent();
  }

  AddMessageChatEvent addMessage(MessageInfo value) {
    return AddMessageChatEvent(
      value,
    );
  }

  EndConnectionChatEvent endConnection() {
    return const EndConnectionChatEvent();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $ConnectChatEventCopyWith<$Res> {
  factory $ConnectChatEventCopyWith(
          ConnectChatEvent value, $Res Function(ConnectChatEvent) then) =
      _$ConnectChatEventCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$ConnectChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $ConnectChatEventCopyWith<$Res> {
  _$ConnectChatEventCopyWithImpl(
      ConnectChatEvent _value, $Res Function(ConnectChatEvent) _then)
      : super(_value, (v) => _then(v as ConnectChatEvent));

  @override
  ConnectChatEvent get _value => super._value as ConnectChatEvent;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(ConnectChatEvent(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectChatEvent extends ConnectChatEvent {
  const _$ConnectChatEvent(this.address) : super._();

  @override
  final String address;

  @override
  String toString() {
    return 'ChatEvent.connect(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectChatEvent &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $ConnectChatEventCopyWith<ConnectChatEvent> get copyWith =>
      _$ConnectChatEventCopyWithImpl<ConnectChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) {
    return connect(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class ConnectChatEvent extends ChatEvent {
  const factory ConnectChatEvent(String address) = _$ConnectChatEvent;
  const ConnectChatEvent._() : super._();

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectChatEventCopyWith<ConnectChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTextChatEventCopyWith<$Res> {
  factory $SetTextChatEventCopyWith(
          SetTextChatEvent value, $Res Function(SetTextChatEvent) then) =
      _$SetTextChatEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetTextChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $SetTextChatEventCopyWith<$Res> {
  _$SetTextChatEventCopyWithImpl(
      SetTextChatEvent _value, $Res Function(SetTextChatEvent) _then)
      : super(_value, (v) => _then(v as SetTextChatEvent));

  @override
  SetTextChatEvent get _value => super._value as SetTextChatEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetTextChatEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetTextChatEvent extends SetTextChatEvent {
  const _$SetTextChatEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'ChatEvent.setText(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetTextChatEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $SetTextChatEventCopyWith<SetTextChatEvent> get copyWith =>
      _$SetTextChatEventCopyWithImpl<SetTextChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) {
    return setText(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) {
    if (setText != null) {
      return setText(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) {
    return setText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) {
    if (setText != null) {
      return setText(this);
    }
    return orElse();
  }
}

abstract class SetTextChatEvent extends ChatEvent {
  const factory SetTextChatEvent(String value) = _$SetTextChatEvent;
  const SetTextChatEvent._() : super._();

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetTextChatEventCopyWith<SetTextChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendChatEventCopyWith<$Res> {
  factory $SendChatEventCopyWith(
          SendChatEvent value, $Res Function(SendChatEvent) then) =
      _$SendChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $SendChatEventCopyWith<$Res> {
  _$SendChatEventCopyWithImpl(
      SendChatEvent _value, $Res Function(SendChatEvent) _then)
      : super(_value, (v) => _then(v as SendChatEvent));

  @override
  SendChatEvent get _value => super._value as SendChatEvent;
}

/// @nodoc

class _$SendChatEvent extends SendChatEvent {
  const _$SendChatEvent() : super._();

  @override
  String toString() {
    return 'ChatEvent.send()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendChatEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) {
    return send();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SendChatEvent extends ChatEvent {
  const factory SendChatEvent() = _$SendChatEvent;
  const SendChatEvent._() : super._();
}

/// @nodoc
abstract class $AddMessageChatEventCopyWith<$Res> {
  factory $AddMessageChatEventCopyWith(
          AddMessageChatEvent value, $Res Function(AddMessageChatEvent) then) =
      _$AddMessageChatEventCopyWithImpl<$Res>;
  $Res call({MessageInfo value});
}

/// @nodoc
class _$AddMessageChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $AddMessageChatEventCopyWith<$Res> {
  _$AddMessageChatEventCopyWithImpl(
      AddMessageChatEvent _value, $Res Function(AddMessageChatEvent) _then)
      : super(_value, (v) => _then(v as AddMessageChatEvent));

  @override
  AddMessageChatEvent get _value => super._value as AddMessageChatEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AddMessageChatEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as MessageInfo,
    ));
  }
}

/// @nodoc

class _$AddMessageChatEvent extends AddMessageChatEvent {
  const _$AddMessageChatEvent(this.value) : super._();

  @override
  final MessageInfo value;

  @override
  String toString() {
    return 'ChatEvent.addMessage(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMessageChatEvent &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $AddMessageChatEventCopyWith<AddMessageChatEvent> get copyWith =>
      _$AddMessageChatEventCopyWithImpl<AddMessageChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) {
    return addMessage(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class AddMessageChatEvent extends ChatEvent {
  const factory AddMessageChatEvent(MessageInfo value) = _$AddMessageChatEvent;
  const AddMessageChatEvent._() : super._();

  MessageInfo get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMessageChatEventCopyWith<AddMessageChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndConnectionChatEventCopyWith<$Res> {
  factory $EndConnectionChatEventCopyWith(EndConnectionChatEvent value,
          $Res Function(EndConnectionChatEvent) then) =
      _$EndConnectionChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndConnectionChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $EndConnectionChatEventCopyWith<$Res> {
  _$EndConnectionChatEventCopyWithImpl(EndConnectionChatEvent _value,
      $Res Function(EndConnectionChatEvent) _then)
      : super(_value, (v) => _then(v as EndConnectionChatEvent));

  @override
  EndConnectionChatEvent get _value => super._value as EndConnectionChatEvent;
}

/// @nodoc

class _$EndConnectionChatEvent extends EndConnectionChatEvent {
  const _$EndConnectionChatEvent() : super._();

  @override
  String toString() {
    return 'ChatEvent.endConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EndConnectionChatEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) connect,
    required TResult Function(String value) setText,
    required TResult Function() send,
    required TResult Function(MessageInfo value) addMessage,
    required TResult Function() endConnection,
  }) {
    return endConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? connect,
    TResult Function(String value)? setText,
    TResult Function()? send,
    TResult Function(MessageInfo value)? addMessage,
    TResult Function()? endConnection,
    required TResult orElse(),
  }) {
    if (endConnection != null) {
      return endConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectChatEvent value) connect,
    required TResult Function(SetTextChatEvent value) setText,
    required TResult Function(SendChatEvent value) send,
    required TResult Function(AddMessageChatEvent value) addMessage,
    required TResult Function(EndConnectionChatEvent value) endConnection,
  }) {
    return endConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectChatEvent value)? connect,
    TResult Function(SetTextChatEvent value)? setText,
    TResult Function(SendChatEvent value)? send,
    TResult Function(AddMessageChatEvent value)? addMessage,
    TResult Function(EndConnectionChatEvent value)? endConnection,
    required TResult orElse(),
  }) {
    if (endConnection != null) {
      return endConnection(this);
    }
    return orElse();
  }
}

abstract class EndConnectionChatEvent extends ChatEvent {
  const factory EndConnectionChatEvent() = _$EndConnectionChatEvent;
  const EndConnectionChatEvent._() : super._();
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  InitialChatState initial() {
    return const InitialChatState();
  }

  LoadingChatState loading() {
    return const LoadingChatState();
  }

  DataChatState data(
      {required String address,
      required String text,
      required List<MessageInfo> messages}) {
    return DataChatState(
      address: address,
      text: text,
      messages: messages,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address, String text, List<MessageInfo> messages)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String address, String text, List<MessageInfo> messages)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatState value) initial,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(DataChatState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(DataChatState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $InitialChatStateCopyWith<$Res> {
  factory $InitialChatStateCopyWith(
          InitialChatState value, $Res Function(InitialChatState) then) =
      _$InitialChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $InitialChatStateCopyWith<$Res> {
  _$InitialChatStateCopyWithImpl(
      InitialChatState _value, $Res Function(InitialChatState) _then)
      : super(_value, (v) => _then(v as InitialChatState));

  @override
  InitialChatState get _value => super._value as InitialChatState;
}

/// @nodoc

class _$InitialChatState extends InitialChatState {
  const _$InitialChatState() : super._();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address, String text, List<MessageInfo> messages)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String address, String text, List<MessageInfo> messages)?
        data,
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
    required TResult Function(InitialChatState value) initial,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(DataChatState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(DataChatState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialChatState extends ChatState {
  const factory InitialChatState() = _$InitialChatState;
  const InitialChatState._() : super._();
}

/// @nodoc
abstract class $LoadingChatStateCopyWith<$Res> {
  factory $LoadingChatStateCopyWith(
          LoadingChatState value, $Res Function(LoadingChatState) then) =
      _$LoadingChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadingChatStateCopyWith<$Res> {
  _$LoadingChatStateCopyWithImpl(
      LoadingChatState _value, $Res Function(LoadingChatState) _then)
      : super(_value, (v) => _then(v as LoadingChatState));

  @override
  LoadingChatState get _value => super._value as LoadingChatState;
}

/// @nodoc

class _$LoadingChatState extends LoadingChatState {
  const _$LoadingChatState() : super._();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address, String text, List<MessageInfo> messages)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String address, String text, List<MessageInfo> messages)?
        data,
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
    required TResult Function(InitialChatState value) initial,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(DataChatState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(DataChatState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChatState extends ChatState {
  const factory LoadingChatState() = _$LoadingChatState;
  const LoadingChatState._() : super._();
}

/// @nodoc
abstract class $DataChatStateCopyWith<$Res> {
  factory $DataChatStateCopyWith(
          DataChatState value, $Res Function(DataChatState) then) =
      _$DataChatStateCopyWithImpl<$Res>;
  $Res call({String address, String text, List<MessageInfo> messages});
}

/// @nodoc
class _$DataChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $DataChatStateCopyWith<$Res> {
  _$DataChatStateCopyWithImpl(
      DataChatState _value, $Res Function(DataChatState) _then)
      : super(_value, (v) => _then(v as DataChatState));

  @override
  DataChatState get _value => super._value as DataChatState;

  @override
  $Res call({
    Object? address = freezed,
    Object? text = freezed,
    Object? messages = freezed,
  }) {
    return _then(DataChatState(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageInfo>,
    ));
  }
}

/// @nodoc

class _$DataChatState extends DataChatState {
  const _$DataChatState(
      {required this.address, required this.text, required this.messages})
      : super._();

  @override
  final String address;
  @override
  final String text;
  @override
  final List<MessageInfo> messages;

  @override
  String toString() {
    return 'ChatState.data(address: $address, text: $text, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataChatState &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  $DataChatStateCopyWith<DataChatState> get copyWith =>
      _$DataChatStateCopyWithImpl<DataChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address, String text, List<MessageInfo> messages)
        data,
  }) {
    return data(address, text, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String address, String text, List<MessageInfo> messages)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(address, text, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialChatState value) initial,
    required TResult Function(LoadingChatState value) loading,
    required TResult Function(DataChatState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialChatState value)? initial,
    TResult Function(LoadingChatState value)? loading,
    TResult Function(DataChatState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataChatState extends ChatState {
  const factory DataChatState(
      {required String address,
      required String text,
      required List<MessageInfo> messages}) = _$DataChatState;
  const DataChatState._() : super._();

  String get address => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<MessageInfo> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataChatStateCopyWith<DataChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
