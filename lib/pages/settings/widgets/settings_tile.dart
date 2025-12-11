import 'package:connectify/controllers/theme.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final IconData icon;
  final String text;
  final void Function() onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.color,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              foregroundColor: iconColor,
              backgroundColor: color,
              child: Icon(icon, size: 18),
            ),
            SizedBox(width: 12),
            Text(text),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ],
        ),
      ),
    );
  }
}

class ThemeToggleTile extends StatefulWidget {
  const ThemeToggleTile({super.key});

  @override
  State<ThemeToggleTile> createState() => _ThemeToggleTileState();
}

class _ThemeToggleTileState extends State<ThemeToggleTile> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            foregroundColor: Colors.black,
            backgroundColor: theme.colorScheme.secondary,
            child: Icon(Icons.dark_mode_outlined, size: 18),
          ),
          SizedBox(width: 12),
          Text("Dark Mode"),
          Spacer(),
          ValueListenableBuilder(
            valueListenable: themeController.themeMode,
            builder: (_, _, _) => Switch.adaptive(
              value: themeController.isDarkMode,
              onChanged: (_) => themeController.toggleTheme(),
            ),
          ),
        ],
      ),
    );
  }
}
