import 'package:pigeon/pigeon.dart';

class Message {
  String? text;
  String? title;
  String? author;
}

enum DeviceBondState { none, bonding, bonded }

class Device {
  String? name;
  List<String?>? uuids;
  String? macAddress;
  DeviceBondState? bondState;
}

@HostApi()
abstract class ChatMessageHostApi {
  void connect(String id);
  void disconnect();
  void sendMessage(String authorId, Message message);
  List<Device> pairedDevices();
  void discoverDevices();
  bool isBluetoothEnabled();
  bool isBluetoothAvailable();
  void enableBluetooth();
}

@FlutterApi()
abstract class ChatMessageFlutterApi {
  void putMessage(Message message);
  void putNewDevice(Device device);
  void setBluetoothEnabledStatus(bool enabled);
  void setBluetoothAvailableStatus(bool enabled);
}
