import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final double iconSize;
  final Color? iconColor;
  final void Function() onTap;

  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
    this.iconSize = 20,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color ?? Color(0xffeef0f3),
          ),
          padding: EdgeInsets.all(8),
          child: Icon(icon, size: iconSize, color: iconColor),
        ),
      ),
    );
  }
}
