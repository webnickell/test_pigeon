import 'package:flutter/material.dart';
import 'package:test_pigeon/bloc/model/message_info.dart';

class MessageBuble extends StatelessWidget {
  const MessageBuble({
    Key? key,
    required this.message,
    required this.isMine,
  }) : super(key: key);

  final MessageInfo message;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    final date = message.date;
    final minutes = date == null
        ? ''
        : date.minute < 10
            ? '0${date.minute}'
            : '${date.minute}';
    return Row(
      children: [
        if (isMine) Spacer(),
        DecoratedBox(
          decoration: BoxDecoration(
            color: isMine ? Colors.black26 : Colors.black12,
            borderRadius: isMine
                ? BorderRadius.circular(8)
                    .copyWith(bottomRight: Radius.circular(0))
                : BorderRadius.circular(8)
                    .copyWith(bottomLeft: Radius.circular(0)),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(message.text),
                SizedBox(height: 4),
                if (date != null) Text('${date.hour}:$minutes'),
              ],
            ),
          ),
        ),
        if (!isMine) Spacer(),
      ],
    );
  }
}
