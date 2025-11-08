import 'package:connectify/config/themes/controller.dart';
import 'package:connectify/pages/landing_page.dart';
import 'package:connectify/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/themes/dark_theme.dart';
import 'config/themes/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());

  runApp(Connectify());
}

class Connectify extends StatefulWidget {
  const Connectify({super.key});

  @override
  State<Connectify> createState() => _ConnectifyState();
}

class _ConnectifyState extends State<Connectify> {
  List<Widget Function()> pages = [() => LandingPage(), () => ProfilePage()];
  late final ThemeController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.find<ThemeController>();
  }

  int curIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: controller.isDarkMode.value
            ? ThemeMode.dark
            : ThemeMode.light,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Connectify'),
            actions: [
              Obx(
                () => SizedBox(
                  width: 60,
                  child: Switch(
                    value: controller.isDarkMode.value,
                    onChanged: (val) => controller.toggleTheme(),
                    // secondary: Icon(
                    //   controller.isDarkMode.value
                    //       ? Icons.dark_mode
                    //       : Icons.light_mode_outlined,
                    // ),
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(child: pages[curIndex]()),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: curIndex,
            onTap: (value) => setState(() => curIndex = value),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
