import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pigeon/bloc/bluetooth/bluetooth_bloc.dart';

class EnableBluetoothScreen extends StatefulWidget {
  const EnableBluetoothScreen({Key? key}) : super(key: key);

  static const routeName = '/enable_bluetooth';

  @override
  _EnableBluetoothScreenState createState() => _EnableBluetoothScreenState();
}

class _EnableBluetoothScreenState extends State<EnableBluetoothScreen> {
  void _onEnable() {
    context.read<BluetoothBloc>().add(BluetoothEvent.enable());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(48),
          child: ElevatedButton(
            onPressed: _onEnable,
            child: Text('Enable'),
          ),
        ),
      ),
    );
  }
}
