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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 38),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sophia Williams",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Lorem Ipsum", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Spacer(),
              Text('Time'),
            ],
          ),
        ),
      ),
    );
  }
}
