import 'package:connectify/pages/inbox/widgets/chat_card.dart';
import 'package:connectify/pages/inbox/widgets/chat_type_button.dart';
import 'package:connectify/widgets/body.dart';
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

    return ConnectifyBody(
      child: Column(
        children: [
          Divider(color: theme.colorScheme.primary.withAlpha(64), height: 32),
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
              const Spacer(),
              RoundedIconButton(
                icon: Icons.search_outlined,
                onTap: () {},
                color: theme.colorScheme.surface,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ChatCard(
                    name: 'Billy Green',
                    lastSent: TimeOfDay.now(),
                    latestMessage: 'Sorry about that',
                  ),
                  ChatCard(
                    name: 'Billy Green',
                    lastSent: TimeOfDay.now(),
                    latestMessage: 'Sorry about that',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
