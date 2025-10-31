import 'package:connectify/widgets/chat_card.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Chatting',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                GestureDetector(child: Icon(Icons.search, size: 32)),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView(
                children: [
                  ChatCard(
                    name: "",
                    lastSent: DateTime.now(),
                    latestMessage: "",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
