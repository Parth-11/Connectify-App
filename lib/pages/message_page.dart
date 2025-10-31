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
            Row(
              children: [
                Text(
                  'Story',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                GestureDetector(child: Icon(Icons.more_horiz, size: 24)),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 84,
                      width: 84,
                      decoration: ShapeDecoration(
                        color: Colors.grey.shade300,
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade500,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                  CircleAvatar(radius: 42),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Chat',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                GestureDetector(child: Icon(Icons.more_horiz, size: 24)),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sophia Williams",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Lorem Ipsum"),
                        ],
                      ),
                      Text('Time'),
                    ],
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
