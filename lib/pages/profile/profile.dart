import 'package:flutter/material.dart';

import '/pages/settings/settings.dart';
import '/widgets/rounded_icon_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  final headerKey = GlobalKey();
  late AnimationController _controller;
  late Animation<double> animation;

  double columnHeight = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _measureColumnHeight();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _measureColumnHeight() {
    final renderBox =
        headerKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      setState(() {
        columnHeight = renderBox.size.height;

        animation = Tween<double>(begin: 0, end: columnHeight).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
        );

        Future.delayed(
          Duration(milliseconds: 300),
          () => _controller.forward(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                if (columnHeight > 0)
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (_, _) => Container(
                      height: animation.value,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                Column(
                  key: headerKey,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                      child: Row(
                        children: [
                          RoundedIconButton(
                            icon: Icons.arrow_back_rounded,
                            onTap: Navigator.of(context).pop,
                            color: theme.colorScheme.surface,
                          ),
                          const Spacer(),
                          RoundedIconButton(
                            icon: Icons.settings_rounded,
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => SettingsPage()),
                            ),
                            color: theme.colorScheme.surface,
                          ),
                        ],
                      ),
                    ),
                    Hero(
                      tag: "pfp",
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colorScheme.onTertiary,
                        ),
                        height: 80,
                        width: 80,
                        child: Icon(
                          Icons.account_circle,
                          color: theme.colorScheme.onPrimaryContainer,
                          size: 36,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: theme.colorScheme.onTertiary,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 8,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                "47",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                "23",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                              Text(
                                "Channels",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: theme.colorScheme.onTertiary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
