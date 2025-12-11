import 'package:flutter/material.dart';

import 'widgets/header.dart';
import 'widgets/stats_section.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey headerKey = GlobalKey();
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

        animation = Tween<double>(begin: 0, end: 1).animate(
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
                      height: animation.value * columnHeight,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ProfileHeader(headerKey: headerKey),
              ],
            ),
            if (columnHeight > 0)
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 8,
                  ),
                  child: IntrinsicHeight(
                    child: AnimatedBuilder(
                      animation: animation,
                      builder: (_, _) => Opacity(
                        opacity: animation.value.clamp(0, 1),
                        child: Row(
                          children: [
                            Expanded(
                              child: StatsSection(
                                value: "47",
                                text: "Followers",
                                onTap: () {},
                              ),
                            ),
                            VerticalDivider(),
                            Expanded(
                              child: StatsSection(
                                value: "23",
                                text: "Following",
                                onTap: () {},
                              ),
                            ),

                            VerticalDivider(),
                            Expanded(
                              child: StatsSection(
                                value: "4",
                                text: "Channels",
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
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
