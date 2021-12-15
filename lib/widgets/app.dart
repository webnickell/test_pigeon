import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pigeon/bloc/bluetooth/bluetooth_bloc.dart';
import 'package:test_pigeon/bloc/chat/chat_bloc.dart';
import 'package:test_pigeon/bloc/chats/chats_bloc.dart';
import 'package:test_pigeon/bloc/model/chat_info.dart';
import 'package:test_pigeon/data/native/message_impl.dart';
import 'package:test_pigeon/widgets/screens/chat_screen.dart';
import 'package:test_pigeon/widgets/screens/chats_screen.dart';
import 'package:test_pigeon/widgets/screens/enable_bluetooth_screen.dart';

class TestPigeonApp extends StatefulWidget {
  @override
  _TestPigeonAppState createState() => _TestPigeonAppState();
}

class _TestPigeonAppState extends State<TestPigeonApp> {
  @override
  void initState() {
    super.initState();
    context.read<BluetoothBloc>().add(const BluetoothEvent.checkStatus());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocBuilder<BluetoothBloc, BluetoothState>(
        builder: (ctx, state) => state.isEnabled
            ? EnabledBluetoothScope(key: ValueKey('Enabled'))
            : EnableBluetoothScreen(key: ValueKey('Disabled')),
      ),
    );
  }
}

class EnabledBluetoothScope extends StatefulWidget {
  const EnabledBluetoothScope({Key? key}) : super(key: key);

  @override
  _EnabledBluetoothScopeState createState() => _EnabledBluetoothScopeState();

  static _EnabledBluetoothScopeState? of(BuildContext context) =>
      context.findAncestorStateOfType<_EnabledBluetoothScopeState>();
}

class _EnabledBluetoothScopeState extends State<EnabledBluetoothScope> {
  ChatInfo? _chatId;

  void selectChat(ChatInfo chat) {
    setState(() {
      _chatId = chat;
    });
  }

  void removeChat() {
    setState(() {
      _chatId = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) {
        return route.didPop(result);
      },
      pages: [
        MaterialPage(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (ctx) => ChatsBloc()),
            ],
            child: ChatsScreen(),
          ),
        ),
        if (_chatId != null)
          MaterialPage(
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => ChatBloc(ctx.read<ChatService>()),
                ),
              ],
              child: ChatScreen(chatId: _chatId!),
            ),
          ),
      ],
    );
  }
}
