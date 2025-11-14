import 'package:flutter/material.dart';

import 'widgets/settings_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Hero(
                    tag: "pfp",
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.primaryContainer,
                      ),
                      height: 60,
                      width: 60,
                      child: Icon(
                        Icons.account_circle,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Active",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 48),
              Text(
                "General",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SettingsTile(
                        icon: Icons.notifications_off_outlined,
                        text: "Pause Notifications",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.primary,
                        iconColor: Colors.white,
                      ),
                      SettingsTile(
                        icon: Icons.data_usage_rounded,
                        text: "Set Status",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                "Others",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SettingsTile(
                        icon: Icons.hub_outlined,
                        text: "Manage Hubs",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      SettingsTile(
                        icon: Icons.shape_line_outlined,
                        text: "Preferences",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.primary,
                        iconColor: Colors.white,
                      ),
                      SettingsTile(
                        icon: Icons.question_answer_outlined,
                        text: "FAQs",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SettingsTile(
                        icon: Icons.message_outlined,
                        text: "Contact Us",
                        onTap: () {},
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Colors.red.withAlpha(80),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 48),
                    ),
                  ),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.red.shade800),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
