import 'package:flutter/material.dart';

import '/widgets/rounded_icon_button.dart';
import 'widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedIconButton(
                    icon: Icons.arrow_back_rounded,
                    onTap: Navigator.of(context).pop,
                    color: theme.colorScheme.surface,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  RoundedIconButton(
                    icon: Icons.power_settings_new_rounded,
                    onTap: () {},
                    color: theme.colorScheme.errorContainer,
                    iconColor: theme.colorScheme.error,
                  ),
                ],
              ),
              const SizedBox(height: 32),
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
                        color: theme.colorScheme.primary,
                        iconColor: Colors.white,
                      ),
                      SettingsTile(
                        icon: Icons.data_usage_rounded,
                        text: "Set Status",
                        onTap: () {},
                        color: theme.colorScheme.secondary,
                      ),
                      ThemeToggleTile(),
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
                        color: theme.colorScheme.tertiary,
                      ),
                      SettingsTile(
                        icon: Icons.shape_line_outlined,
                        text: "Preferences",
                        onTap: () {},
                        color: theme.colorScheme.primary,
                        iconColor: Colors.white,
                      ),
                      SettingsTile(
                        icon: Icons.question_answer_outlined,
                        text: "FAQs",
                        onTap: () {},
                        color: theme.colorScheme.secondary,
                      ),
                      SettingsTile(
                        icon: Icons.message_outlined,
                        text: "Contact Us",
                        onTap: () {},
                        color: theme.colorScheme.tertiary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
