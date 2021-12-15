import 'package:flutter/material.dart';
import 'package:test_pigeon/bloc/model/chat_info.dart';

class ChatCell extends StatelessWidget {
  const ChatCell({
    Key? key,
    required this.chat,
    required this.onTap,
  }) : super(key: key);

  final ChatInfo chat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text('${chat.deviceName}'),
      ),
    );
  }
}
