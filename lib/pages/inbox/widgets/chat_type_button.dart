import 'package:flutter/material.dart';

class ChatTypeButton extends StatelessWidget {
  const ChatTypeButton({
    super.key,
    required this.chatType,
    this.activeChats,
    required this.callback,
  });

  final String chatType;
  final int? activeChats;
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Row(
        children: [
          Text(chatType),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
            ),
            child: Text(activeChats!.toString()),
          ),
        ],
      ),
    );
  }
}
