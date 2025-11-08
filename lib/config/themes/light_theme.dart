import 'package:flutter/material.dart';

const Color backgroundColor = Colors.white;
const Color primary = Color(0xff242529);
const Color secondary = Color(0xffd7d0fe);
const Color tertiary = Color(0xffffecba);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: primary,
    secondary: secondary,
    tertiary: tertiary,
    surface: backgroundColor,
    error: Colors.red.shade700,
    onPrimary: Colors.white,
    onSurface: Colors.black87,
  ),
  scaffoldBackgroundColor: backgroundColor,
  cardTheme: CardThemeData(
    color: backgroundColor,
    elevation: 3,
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
