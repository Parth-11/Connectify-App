import 'package:flutter/material.dart';

import 'widgets/settings_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.account_circle_rounded, size: 30),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Active",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Divider(height: 48),
          Text(
            "General",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  SettingsTile(
                    icon: Icons.notifications_off_outlined,
                    text: "Pause Notifications",
                    onTap: () {},
                    color: Color(0xff242529),
                    iconColor: Colors.white,
                  ),
                  SettingsTile(
                    icon: Icons.data_usage_rounded,
                    text: "Set Status",
                    onTap: () {},
                    color: Color(0xffd7d0fe),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32),
          Text(
            "Others",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  SettingsTile(
                    icon: Icons.hub_outlined,
                    text: "Manage Hubs",
                    onTap: () {},
                    color: Color(0xffffecba),
                  ),
                  SettingsTile(
                    icon: Icons.shape_line_outlined,
                    text: "Preferences",
                    onTap: () {},
                    color: Color(0xff242529),
                    iconColor: Colors.white,
                  ),
                  SettingsTile(
                    icon: Icons.question_answer_outlined,
                    text: "FAQs",
                    onTap: () {},
                    color: Color(0xffd7d0fe),
                  ),
                  SettingsTile(
                    icon: Icons.message_outlined,
                    text: "Contact Us",
                    onTap: () {},
                    color: Color(0xffffecba),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Center(
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Colors.red.withAlpha(80),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 48),
                ),
              ),
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.red.shade800),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
