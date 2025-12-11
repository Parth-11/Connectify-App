import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  final String value;
  final String text;
  final void Function() onTap;

  const StatsSection({
    super.key,
    required this.value,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: theme.colorScheme.onSurface,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
