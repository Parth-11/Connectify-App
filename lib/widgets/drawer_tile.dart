import 'package:connectify/controllers/drawer.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final void Function() onTap;

  const DrawerTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          onTap();
          drawerController.toggle();
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: !isSelected
                ? null
                : LinearGradient(
                    colors: [
                      theme.colorScheme.surface.withAlpha(160),
                      theme.colorScheme.primaryContainer,
                    ],
                  ),
          ),
          width: MediaQuery.of(context).size.width / 2 + 20,
          child: Row(
            children: [
              Icon(
                icon,
                color: theme.colorScheme.onPrimaryContainer,
                size: 32,
                shadows: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    blurRadius: 4,
                    spreadRadius: 4,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
