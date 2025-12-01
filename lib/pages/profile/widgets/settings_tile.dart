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
