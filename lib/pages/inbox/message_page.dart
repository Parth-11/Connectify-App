import 'package:connectify/pages/inbox/widgets/chat_card.dart';
import 'package:connectify/pages/inbox/widgets/chat_type_button.dart';
import 'package:connectify/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      RoundedIconButton(
                        icon: Icons.arrow_back_ios_new_outlined,
                        onTap: () {},
                        color: theme.colorScheme.surface,
                      ),
                      const Spacer(),
                      RoundedIconButton(
                        icon: Icons.search_outlined,
                        onTap: () {},
                        color: theme.colorScheme.surface,
                      ),
                    ],
                  ),
                ),
                Text('Inbox'),
                Row(
                  children: [
                    ChatTypeButton(
                      chatType: 'Private',
                      activeChats: 16,
                      callback: () {},
                    ),
                    const SizedBox(width: 16),
                    ChatTypeButton(
                      chatType: 'Group',
                      activeChats: 2,
                      callback: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
