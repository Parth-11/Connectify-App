import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const DrawerTile({
    super.key,
    required this.icon,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: !isSelected
            ? null
            : LinearGradient(
                colors: [
                  theme.colorScheme.surface.withAlpha(160),
                  theme.colorScheme.primaryContainer,
                ],
                stops: [0, 1],
              ),
      ),
      width: MediaQuery.of(context).size.width / 2 + 20,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: theme.colorScheme.onPrimaryContainer,
            size: 32,
            shadows: [
              BoxShadow(offset: Offset(1, 1), blurRadius: 4, spreadRadius: 4),
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
    );
  }
}
