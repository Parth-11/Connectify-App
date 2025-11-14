import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xffeef0f3);
const Color surfaceColor = Colors.white;
const Color primary = Color(0xff242529);
const Color secondary = Color(0xffd7d0fe);
const Color tertiary = Color(0xffffecba);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: primary,
    secondary: secondary,
    tertiary: tertiary,
    surface: surfaceColor,
    error: Colors.red.shade700,
    errorContainer: Colors.red.withAlpha(80),
    onPrimary: Colors.white,
    onSurface: Colors.black87,
  ),
  scaffoldBackgroundColor: backgroundColor,
  cardTheme: CardThemeData(
    color: surfaceColor,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 24,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
  ),
);
