
import 'package:flutter/material.dart';

import '/widgets/drawer.dart';
import 'feed/feed.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  bool drawerOpen = false;
  late final AnimationController controller;
  late final Animation<double> scaleAnimation;
  late final Animation<double> slideAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.9,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    slideAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    if (controller.isCompleted) {
      controller.reverse().whenComplete(() => setState(() {}));
    } else {
      controller.forward().whenComplete(() => setState(() {}));
    }

    setState(() => drawerOpen = !drawerOpen);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: !drawerOpen && !controller.isAnimating
          ? null
          : theme.colorScheme.primary,
      body: SafeArea(
        child: Stack(
          children: [
            ConnectifyDrawer(callback: _toggleDrawer),
            GestureDetector(
              onTap: drawerOpen ? _toggleDrawer : null,
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  final ThemeData theme = Theme.of(context);
                  final slide = slideAnimation.value * width;
                  final scale = scaleAnimation.value;

                  return Transform(
                    alignment: Alignment.center,
                    transform:
                        Matrix4.identity() *
                        Matrix4.diagonal3Values(scale, scale, 1) *
                        Matrix4.translationValues(slide, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: theme.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(
                          25 * (controller.value > 0 ? 1 : 0),
                        ),
                      ),
                      child: child,
                    ),
                  );
                },
                child: FeedPage(callback: _toggleDrawer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
