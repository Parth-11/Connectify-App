import 'package:connectify/config/themes/controller.dart';
import 'package:connectify/pages/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/themes/dark_theme.dart';
import 'config/themes/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());

  runApp(Connectify());
}

class Connectify extends StatelessWidget {
  const Connectify({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController controller = Get.find<ThemeController>();

    return Obx(
      () => MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: controller.isDarkMode.value
            ? ThemeMode.dark
            : ThemeMode.light,
        home: SignInPage(),
      ),
    );
  }
}
