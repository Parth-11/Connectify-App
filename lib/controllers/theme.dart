import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController {
  final String _key = "isDarkMode";
  final ValueNotifier<ThemeMode> themeMode = ValueNotifier<ThemeMode>(
    ThemeMode.system,
  );

  ThemeController() {
    _loadTheme();
  }

  bool get _isDarkMode => themeMode.value == ThemeMode.dark;

  void _loadTheme() async {
    final SharedPreferences box = await SharedPreferences.getInstance();
    themeMode.value = (box.getBool(_key) ?? false)
        ? ThemeMode.dark
        : ThemeMode.light;
    _saveTheme();
  }

  void _saveTheme() async {
    final SharedPreferences box = await SharedPreferences.getInstance();
    await box.setBool(_key, _isDarkMode);
  }

  void toggleTheme() {
    themeMode.value = _isDarkMode ? ThemeMode.light : ThemeMode.dark;
    _saveTheme();
  }
}

final ThemeController themeController = ThemeController();
