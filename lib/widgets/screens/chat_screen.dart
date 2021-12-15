import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pigeon/bloc/chat/chat_bloc.dart';
import 'package:test_pigeon/bloc/model/chat_info.dart';
import 'package:test_pigeon/widgets/components/message_bottom_control.dart';
import 'package:test_pigeon/widgets/components/message_buble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
    required this.chatId,
  }) : super(key: key);

  final ChatInfo chatId;
  static const routeName = '/chat';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<ChatBloc>().add(ChatEvent.connect(widget.chatId.address));
    controller.addListener(() {
      context.read<ChatBloc>().add(ChatEvent.setText(controller.text));
    });
  }

  @override
  void dispose() {
    context.read<ChatBloc>().add(ChatEvent.endConnection());
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.chatId.deviceName}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (ctx, state) => state.maybeMap(
                orElse: () => Center(
                  child: CircularProgressIndicator(),
                ),
                data: (data) => data.messages.isEmpty
                    ? Center(child: Text('No messages in chat'))
                    : ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        separatorBuilder: (ctx, _) => SizedBox(height: 8),
                        itemCount: data.messages.length,
                        itemBuilder: (ctx, i) {
                          final message = data.messages[i];
                          return MessageBuble(
                            message: message,
                            isMine: widget.chatId.address != message.author,
                          );
                        },
                      ),
              ),
            ),
          ),
          BlocConsumer<ChatBloc, ChatState>(
            listenWhen: (prev, curr) =>
                prev is DataChatState &&
                curr is DataChatState &&
                prev.text.isNotEmpty &&
                curr.text.isEmpty,
            listener: (ctx, state) => controller.clear(),
            builder: (context, state) {
              return MessageBottomControl(
                canSend: state.canSend,
                controller: controller,
                onSend: () => context.read<ChatBloc>().add(ChatEvent.send()),
              );
            },
          ),
        ],
      ),
    );
  }
}
