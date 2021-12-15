import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_pigeon/data/native/message_impl.dart';
import 'package:rxdart/rxdart.dart';

part 'bluetooth_bloc.freezed.dart';

@freezed
class BluetoothEvent with _$BluetoothEvent {
  const BluetoothEvent._();

  const factory BluetoothEvent.checkStatus() = CheckStatusBluetoothEvent;

  const factory BluetoothEvent.enable() = EnableBluetoothEvent;

  const factory BluetoothEvent.disable() = DisableBluetoothEvent;
}

@freezed
class BluetoothState with _$BluetoothState {
  const BluetoothState._();

  const factory BluetoothState({
    required bool isEnabled,
    required bool isAvailable,
  }) = _BluetoothState;
}

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothState> {
  BluetoothBloc(this._bluetoothService)
      : super(BluetoothState(
          isEnabled: false,
          isAvailable: true,
        )) {
    on<CheckStatusBluetoothEvent>((event, emit) {
      _subscription?.cancel();
      _subscription = Rx.combineLatest2<bool, bool, BluetoothState>(
        _bluetoothService.bluetoothEnabled,
        _bluetoothService.bluetoothAvailable,
        (enabled, available) => BluetoothState(
          isEnabled: enabled,
          isAvailable: available,
        ),
      ).listen((event) => emit(event));

      _bluetoothService.checkAvailability();
      _bluetoothService.checkBluetooth();
    });

    on<EnableBluetoothEvent>((event, emit) async {
      _bluetoothService.enableBluetooth();
    });
  }

  StreamSubscription<Object>? _subscription;
  final ChatService _bluetoothService;
}
