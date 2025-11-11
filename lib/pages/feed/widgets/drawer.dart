import 'package:connectify/pages/feed/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

class ConnectifyDrawer extends StatelessWidget {
  final void Function() callback;

  const ConnectifyDrawer({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: theme.colorScheme.primaryContainer,
      child: SizedBox(
        width: size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05 - 8),
            DrawerTile(icon: Icons.home, title: "Feed", isSelected: true),
            DrawerTile(icon: Icons.hub_outlined, title: "Hubs"),
            DrawerTile(icon: Icons.home, title: "Feed"),
            DrawerTile(icon: Icons.home, title: "Feed"),
            const Spacer(),
            Divider(
              indent: 16,
              endIndent: 16 + size.width / 2,
              height: 0,
              color: theme.colorScheme.onPrimaryContainer,
            ),
            DrawerTile(
              icon: Icons.power_settings_new_rounded,
              title: "Sign Out",
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: callback,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: theme.colorScheme.onPrimaryContainer
                          .withAlpha(64),
                      child: Icon(Icons.chevron_right_rounded, size: 40),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connectify",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      Text(
                        "Copyrights",
                        style: TextStyle(
                          fontSize: 12,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05 - 8),
          ],
        ),
      ),
    );
  }
}
