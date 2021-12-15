import 'package:flutter/material.dart';

class MessageBottomControl extends StatelessWidget {
  const MessageBottomControl({
    Key? key,
    required this.onSend,
    required this.canSend,
    required this.controller,
  }) : super(key: key);

  final VoidCallback onSend;
  final bool canSend;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 10,
            blurRadius: 5,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              //constraints: BoxConstraints.tightFor(height: 50),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: controller,
              ),
            ),
            SizedBox(width: 4),
            IconButton(
              onPressed: canSend ? onSend : null,
              icon: Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }
}
