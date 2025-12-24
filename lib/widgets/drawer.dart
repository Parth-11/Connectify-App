import 'package:connectify/controllers/drawer.dart';
import 'package:connectify/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

class ConnectifyDrawer extends StatelessWidget {
  const ConnectifyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2 + 32,
      height: size.height * 0.85,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSurface.withAlpha(16),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerTile(
            icon: Icons.home,
            title: "Feed",
            isSelected: true,
            onTap: () {},
          ),
          DrawerTile(icon: Icons.hub_outlined, title: "Hubs", onTap: () {}),
          DrawerTile(icon: Icons.home, title: "Feed", onTap: () {}),
          DrawerTile(icon: Icons.home, title: "Feed", onTap: () {}),
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
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    customBorder: CircleBorder(),
                    onTap: drawerController.toggle,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: theme.colorScheme.onSurface.withAlpha(
                        64,
                      ),
                      child: Icon(Icons.chevron_left_rounded, size: 40),
                    ),
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
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      "Copyrights",
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
