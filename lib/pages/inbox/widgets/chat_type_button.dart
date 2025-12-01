import 'package:flutter/material.dart';

class ChatTypeButton extends StatelessWidget {
  const ChatTypeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text('Private'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
            ),
            child: Text('16'),
          ),
        ],
      ),
    );
  }
}
