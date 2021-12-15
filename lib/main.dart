import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pigeon/bloc/bluetooth/bluetooth_bloc.dart';
import 'package:test_pigeon/data/native/chat_message.dart';
import 'package:test_pigeon/data/native/message_impl.dart';
import 'package:test_pigeon/widgets/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<ChatService>(
        create: (ctx) => BluetoothChatService(
          ChatMessageHostApi(),
        ),
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => BluetoothBloc(ctx.read<ChatService>()),
        ),
      ],
      child: TestPigeonApp(),
    ),
  ));
}
