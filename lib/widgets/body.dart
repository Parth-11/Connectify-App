import 'package:flutter/material.dart';

import '/controllers/drawer.dart';
import '/pages/profile/profile.dart';
import 'rounded_icon_button.dart';

class ConnectifyBody extends StatelessWidget {
  final Widget child;
  final String? title;

  const ConnectifyBody({super.key, required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              RoundedIconButton(
                icon: Icons.menu_rounded,
                onTap: drawerController.toggle,
                color: theme.colorScheme.surface,
              ),
              const Spacer(),
              if (title != null) ...[
                Text(
                  title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const Spacer(),
              ],
              RoundedIconButton(
                icon: Icons.notifications_none_rounded,
                onTap: () {},
                color: theme.colorScheme.surface,
              ),
              const SizedBox(width: 12),
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
          const SizedBox(height: 16),
          Expanded(child: child),
        ],
      ),
    );
  }
}
