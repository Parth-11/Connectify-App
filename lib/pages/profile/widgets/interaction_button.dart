import 'package:flutter/material.dart';

class InteractionButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const InteractionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: theme.canvasColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: theme.colorScheme.onSurface),
              const SizedBox(width: 8),
              Text(text, style: TextStyle(color: theme.colorScheme.onSurface)),
            ],
          ),
        ),
      ),
    );
  }
}
