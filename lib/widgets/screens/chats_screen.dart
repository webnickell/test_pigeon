import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pigeon/bloc/chats/chats_bloc.dart';
import 'package:test_pigeon/widgets/app.dart';
import 'package:test_pigeon/widgets/components/chat_cell.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  static const routeName = '/chats';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ChatsBloc>().add(ChatsEvent.findDevices());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: BlocBuilder<ChatsBloc, ChatsState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
          data: (data) => data.chats.isEmpty
              ? Center(child: Text('Paired devices not found'))
              : ListView.builder(
                  itemCount: data.chats.length,
                  itemBuilder: (ctx, i) => ChatCell(
                    chat: data.chats[i],
                    onTap: () {
                      EnabledBluetoothScope.of(ctx)?.selectChat(data.chats[i]);
                    },
                  ),
                ),
        ),
      ),
    );
  }
}
