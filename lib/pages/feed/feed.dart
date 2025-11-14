import 'package:connectify/pages/profile/profile.dart';
import 'package:connectify/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

import 'widgets/activity_card.dart';
import 'widgets/drawer.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>
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
      controller.reverse();
    } else {
      controller.forward();
    }

    setState(() => drawerOpen = !drawerOpen);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
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
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(
                          25 * (controller.value > 0 ? 1 : 0),
                        ),
                      ),
                      child: child,
                    ),
                  );
                },
                child: _FeedPageMain(callback: _toggleDrawer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedPageMain extends StatelessWidget {
  final void Function() callback;

  const _FeedPageMain({required this.callback});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                RoundedIconButton(icon: Icons.menu_rounded, onTap: callback),
                const Spacer(),
                RoundedIconButton(
                  icon: Icons.notifications_none_rounded,
                  onTap: () {},
                ),
                const SizedBox(width: 8),
                RoundedIconButton(icon: Icons.settings_rounded, onTap: () {}),
                VerticalDivider(
                  width: 24,
                  color: Colors.grey.shade400,
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Hero(
                    tag: "pfp",
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.primaryContainer,
                      ),
                      height: 48,
                      width: 48,
                      child: Icon(
                        Icons.account_circle,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ActivityCard(
                    content:
                        "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
                    imageCount: 0,
                  ),
                  ActivityCard(content: "", imageCount: 1),
                  ActivityCard(
                    content:
                        "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
                    imageCount: 2,
                    timeText: "56m",
                  ),
                  ActivityCard(content: "", imageCount: 4, timeText: "1h"),
                  ActivityCard(content: "", imageCount: 5),
                  ActivityCard(content: "", imageCount: 7, timeText: "36s"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
