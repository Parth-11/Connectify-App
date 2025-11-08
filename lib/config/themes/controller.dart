import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dark_theme.dart';
import 'light_theme.dart';

class ThemeController extends GetxController {
  final String _key = "isDarkMode";
  final RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? darkTheme : lightTheme);
    _saveTheme();
  }

  void _loadTheme() async {
    final SharedPreferences box = await SharedPreferences.getInstance();
    isDarkMode.value = box.getBool(_key) ?? false;
    Get.changeTheme(isDarkMode.value ? darkTheme : lightTheme);
  }

  void _saveTheme() async {
    final SharedPreferences box = await SharedPreferences.getInstance();
    await box.setBool(_key, isDarkMode.value);
  }
}
