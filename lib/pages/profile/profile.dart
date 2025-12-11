import 'package:flutter/material.dart';

import '/pages/settings/settings.dart';
import '/widgets/rounded_icon_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RoundedIconButton(
                    icon: Icons.arrow_back_rounded,
                    onTap: Navigator.of(context).pop,
                    color: theme.colorScheme.surface,
                  ),
                  const Spacer(),
                  RoundedIconButton(
                    icon: Icons.settings_rounded,
                    onTap: () => Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => SettingsPage())),
                    color: theme.colorScheme.surface,
                  ),
                ],
              ),
              const SizedBox(height: 32),
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
            ],
          ),
        ),
      ),
    );
  }
}
