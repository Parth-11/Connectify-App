import 'package:connectify/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/config/themes/controller.dart';
import 'widgets/activity_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController controller = Get.find<ThemeController>();
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        leadingWidth: 64,
        actionsPadding: EdgeInsets.only(right: 16),
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.menu_rounded, size: 20),
            ),
          ),
        ),
        actions: [
          // Obx(
          //   () => SizedBox(
          //     width: 60,
          //     child: Switch(
          //       value: controller.isDarkMode.value,
          //       onChanged: (val) => controller.toggleTheme(),
          //     ),
          //   ),
          // ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(Icons.notifications_none_rounded, size: 20),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(Icons.settings_rounded, size: 20),
            ),
          ),
          VerticalDivider(width: 24, color: Colors.grey.shade400, thickness: 2),
          InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.primaryContainer,
              ),
              height: 48,
              width: 48,
              child: Icon(
                Icons.account_circle_outlined,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
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
      ),
    );
  }
}
