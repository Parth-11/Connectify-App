import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.name,
    required this.lastSent,
    required this.latestMessage,
    this.circleImage,
  });
  final String name;
  final String latestMessage;
  final TimeOfDay lastSent;
  final NetworkImage? circleImage;

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
              CircleAvatar(radius: 32, backgroundImage: NetworkImage('')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(latestMessage, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Spacer(),
              Text(lastSent.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
