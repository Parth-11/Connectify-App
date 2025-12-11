import 'package:flutter/material.dart';

import '/pages/settings/settings.dart';
import '/widgets/rounded_icon_button.dart';

class ProfileHeader extends StatelessWidget {
  final GlobalKey headerKey;

  const ProfileHeader({super.key, required this.headerKey});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      key: headerKey,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconButton(
                icon: Icons.arrow_back_rounded,
                onTap: Navigator.of(context).pop,
                color: theme.colorScheme.surface,
              ),
              RoundedIconButton(
                icon: Icons.settings_rounded,
                onTap: () => Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (_) => SettingsPage())),
                color: theme.colorScheme.surface,
              ),
            ],
          ),
        ),
        Hero(
          tag: "pfp",
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.onTertiary,
            ),
            height: 80,
            width: 80,
            child: Icon(
              Icons.account_circle,
              color: theme.colorScheme.onPrimaryContainer,
              size: 36,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "John Doe",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: theme.colorScheme.onTertiary,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
