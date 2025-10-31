import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  ChatCard({
    super.key,
    required this.name,
    required this.lastSent,
    required this.latestMessage,
  });
  String name;
  String latestMessage;
  DateTime lastSent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.fromLTRB(
            bottom: BorderSide(width: 1, color: Colors.grey.shade300),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(radius: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sophia Williams",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text("Lorem Ipsum"),
                ],
              ),
              Text('Time'),
            ],
          ),
        ),
      ),
    );
  }
}
