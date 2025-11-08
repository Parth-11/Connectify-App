import 'package:flutter/material.dart';

Color backgroundColor = Colors.black;
const Color primary = Color(0xff242529);
const Color secondary = Color(0xffd7d0fe);
const Color tertiary = Color(0xffffecba);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: Typography.whiteHelsinki,
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
    shadowColor: Colors.white,
    elevation: 4,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.grey.shade200,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey),
);
