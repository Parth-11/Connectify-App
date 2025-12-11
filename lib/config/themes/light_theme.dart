import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color backgroundColor = Color(0xFFF7F5F0);
const Color surfaceColor = Colors.white;
const Color primary = Color(0xff242529);
const Color secondary = Color(0xffd7d0fe);
const Color tertiary = Color(0xFFFFE2A8);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: GoogleFonts.poppinsTextTheme(),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(textStyle: GoogleFonts.poppins()),
  ),
  colorScheme: ColorScheme.light(
    primary: primary,
    onPrimary: Colors.white,
    secondary: secondary,
    tertiary: tertiary,
    onTertiary: Color(0xFF3E3E3E),
    surface: surfaceColor,
    onSurface: Colors.black87,
    error: Colors.red.shade700,
    errorContainer: Colors.red.withAlpha(80),
  ),
  scaffoldBackgroundColor: backgroundColor,
  cardTheme: CardThemeData(
    color: surfaceColor,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
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
  inputDecorationTheme: InputDecorationThemeData(
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(50),
    ),
    filled: true,
    fillColor: backgroundColor,
  ),
);
