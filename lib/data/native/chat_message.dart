// Autogenerated from Pigeon (v1.0.7), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

enum DeviceBondState {
  none,
  bonding,
  bonded,
}

class Message {
  String? text;
  String? title;
  String? author;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['text'] = text;
    pigeonMap['title'] = title;
    pigeonMap['author'] = author;
    return pigeonMap;
  }

  static Message decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Message()
      ..text = pigeonMap['text'] as String?
      ..title = pigeonMap['title'] as String?
      ..author = pigeonMap['author'] as String?;
  }
}

class Device {
  String? name;
  List<String?>? uuids;
  String? macAddress;
  DeviceBondState? bondState;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['name'] = name;
    pigeonMap['uuids'] = uuids;
    pigeonMap['macAddress'] = macAddress;
    pigeonMap['bondState'] = bondState == null ? null : bondState!.index;
    return pigeonMap;
  }

  static Device decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Device()
      ..name = pigeonMap['name'] as String?
      ..uuids = (pigeonMap['uuids'] as List<Object?>?)?.cast<String?>()
      ..macAddress = pigeonMap['macAddress'] as String?
      ..bondState = pigeonMap['bondState'] != null
          ? DeviceBondState.values[pigeonMap['bondState']! as int]
          : null;
  }
}

class _ChatMessageHostApiCodec extends StandardMessageCodec {
  const _ChatMessageHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Device) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is Message) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return Device.decode(readValue(buffer)!);
      
      case 129:       
        return Message.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class ChatMessageHostApi {
  /// Constructor for [ChatMessageHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  ChatMessageHostApi({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _ChatMessageHostApiCodec();

  Future<void> connect(String arg_id) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.connect', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_id]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> disconnect() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.disconnect', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> sendMessage(String arg_authorId, Message arg_message) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.sendMessage', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_authorId, arg_message]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<List<Device?>> pairedDevices() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.pairedDevices', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<Device?>();
    }
  }

  Future<void> discoverDevices() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.discoverDevices', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<bool> isBluetoothEnabled() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.isBluetoothEnabled', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<bool> isBluetoothAvailable() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.isBluetoothAvailable', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<void> enableBluetooth() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatMessageHostApi.enableBluetooth', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _ChatMessageFlutterApiCodec extends StandardMessageCodec {
  const _ChatMessageFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Device) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is Message) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return Device.decode(readValue(buffer)!);
      
      case 129:       
        return Message.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}
abstract class ChatMessageFlutterApi {
  static const MessageCodec<Object?> codec = _ChatMessageFlutterApiCodec();

  void putMessage(Message message);
  void putNewDevice(Device device);
  void setBluetoothEnabledStatus(bool enabled);
  void setBluetoothAvailableStatus(bool enabled);
  static void setup(ChatMessageFlutterApi? api) {
    {
      const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ChatMessageFlutterApi.putMessage', codec);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.putMessage was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Message? arg_message = args[0] as Message?;
          assert(arg_message != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.putMessage was null, expected non-null Message.');
          api.putMessage(arg_message!);
          return;
        });
      }
    }
    {
      const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ChatMessageFlutterApi.putNewDevice', codec);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.putNewDevice was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Device? arg_device = args[0] as Device?;
          assert(arg_device != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.putNewDevice was null, expected non-null Device.');
          api.putNewDevice(arg_device!);
          return;
        });
      }
    }
    {
      const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothEnabledStatus', codec);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothEnabledStatus was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_enabled = args[0] as bool?;
          assert(arg_enabled != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothEnabledStatus was null, expected non-null bool.');
          api.setBluetoothEnabledStatus(arg_enabled!);
          return;
        });
      }
    }
    {
      const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothAvailableStatus', codec);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothAvailableStatus was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_enabled = args[0] as bool?;
          assert(arg_enabled != null, 'Argument for dev.flutter.pigeon.ChatMessageFlutterApi.setBluetoothAvailableStatus was null, expected non-null bool.');
          api.setBluetoothAvailableStatus(arg_enabled!);
          return;
        });
      }
    }
  }
}
