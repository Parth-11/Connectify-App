import 'package:connectify/controllers/drawer.dart';
import 'package:connectify/pages/profile/profile.dart';
import 'package:connectify/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

import 'widgets/activity_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                RoundedIconButton(
                  icon: Icons.menu_rounded,
                  onTap: drawerController.toggle,
                  color: theme.colorScheme.surface,
                ),
                const Spacer(),
                RoundedIconButton(
                  icon: Icons.notifications_none_rounded,
                  onTap: () {},
                  color: theme.colorScheme.surface,
                ),
                const SizedBox(width: 8),
                RoundedIconButton(
                  icon: Icons.settings_rounded,
                  onTap: () {},
                  color: theme.colorScheme.surface,
                ),
                VerticalDivider(
                  width: 24,
                  color: Colors.grey.shade400,
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Hero(
                    tag: "pfp",
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.primaryContainer,
                      ),
                      height: 48,
                      width: 48,
                      child: Icon(
                        Icons.account_circle,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ActivityCard(
                    content:
                        "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
                    imageCount: 0,
                  ),
                  ActivityCard(content: "", imageCount: 1),
                  ActivityCard(
                    content:
                        "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
                    imageCount: 2,
                    timeText: "56m",
                  ),
                  ActivityCard(content: "", imageCount: 4, timeText: "1h"),
                  ActivityCard(content: "", imageCount: 5),
                  ActivityCard(content: "", imageCount: 7, timeText: "36s"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
