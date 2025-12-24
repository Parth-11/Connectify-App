import 'package:connectify/controllers/drawer.dart';
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
  late final AnimationController controller;
  late final Animation<double> opacityAnimation;
  late final Animation<double> slideAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    Curve curve = Curves.fastEaseInToSlowEaseOut;

    opacityAnimation = Tween<double>(
      begin: 1,
      end: 0.04,
    ).animate(CurvedAnimation(parent: controller, curve: curve));

    slideAnimation = Tween<double>(
      begin: -0.6,
      end: 0.06,
    ).animate(CurvedAnimation(parent: controller, curve: curve));

    drawerController.isOpen.addListener(() {
      if (drawerController.isOpen.value) {
        controller.forward().whenComplete(() => setState(() {}));
      } else {
        controller.reverse().whenComplete(() => setState(() {}));
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ValueListenableBuilder<bool>(
      valueListenable: drawerController.isOpen,
      builder: (context, open, _) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: opacityAnimation,
                builder: (context, child) =>
                    Opacity(opacity: opacityAnimation.value, child: child),
                child: GestureDetector(
                  onTap: open ? drawerController.toggle : null,
                  child: AbsorbPointer(absorbing: open, child: FeedPage()),
                ),
              ),
              AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  return Positioned(
                    left: size.width * slideAnimation.value,
                    top: size.height * 0.015,
                    bottom: size.height * 0.015,
                    child: child!,
                  );
                },
                child: ConnectifyDrawer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
