import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:test_pigeon/data/native/chat_message.dart';

abstract class ChatService {
  Stream<Message> connectToChat(Device device);
  Stream<List<Device>> get devices;
  Stream<bool> get bluetoothEnabled;
  Stream<bool> get bluetoothAvailable;
  void findDevices();
  void enableBluetooth();
  void checkAvailability();
  void checkBluetooth();
}

class BluetoothChatService extends ChatMessageFlutterApi
    implements ChatService {
  BluetoothChatService(this._hostApi);

  final ChatMessageHostApi _hostApi;

  StreamController<Message>? _controller;
  final BehaviorSubject<List<Device>> _devices =
      BehaviorSubject.seeded(const []);
  final BehaviorSubject<bool> _bluetoothEnabled = BehaviorSubject();
  final BehaviorSubject<bool> _bluetoothAvailable = BehaviorSubject();

  Future<void> close() async {
    await _controller?.close();
    _controller = null;
    _hostApi.disconnect();
  }

  @override
  Stream<List<Device>> get devices => _devices;

  @override
  Stream<bool> get bluetoothAvailable => _bluetoothAvailable;

  @override
  Stream<bool> get bluetoothEnabled => _bluetoothEnabled;

  @override
  void putMessage(Message message) {
    _controller?.add(message);
  }

  @override
  void putNewDevice(Device device) {
    final list = List.of(_devices.value)..add(device);
    _devices.add(list);
  }

  @override
  void setBluetoothAvailableStatus(bool enabled) {
    _bluetoothAvailable.add(enabled);
  }

  @override
  void setBluetoothEnabledStatus(bool enabled) {
    _bluetoothEnabled.add(enabled);
  }

  @override
  Stream<Message> connectToChat(Device device) {
    final controller = StreamController<Message>.broadcast();
    _controller = controller;
    final id = device.uuids?.first;
    _hostApi.connect(id!);

    return controller.stream;
  }

  @override
  void findDevices() async {
    final res = await _hostApi.pairedDevices();
    _devices.add(res.cast());
  }

  @override
  void checkAvailability() async {
    final res = await _hostApi.isBluetoothAvailable();
    _bluetoothAvailable.add(res);
  }

  @override
  void checkBluetooth() async {
    final res = await _hostApi.isBluetoothEnabled();
    _bluetoothEnabled.add(res);
  }

  @override
  void enableBluetooth() {
    _hostApi.enableBluetooth();
  }
}
