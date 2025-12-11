import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color backgroundColor = Color(0xFF181716);
const Color primary = Color(0xFF2B2721);
const Color onPrimary = Color(0xFFEDEAE6);
const Color surfaceColor = Color(0xFF1E1D1B);
const Color secondary = Color(0xFF998EF7);
const Color tertiary = Color(0xFFD8C48A);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: backgroundColor,
  colorScheme: ColorScheme.dark(
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    tertiary: tertiary,
    surface: surfaceColor,
    onSurface: onPrimary,
    error: Colors.red.shade700,
    errorContainer: Colors.red.withAlpha(80),
    inverseSurface: Color(0xFFEDEAE6),
    inversePrimary: Color(0xFFCDC3FF),
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    ThemeData.dark().textTheme.apply(
      bodyColor: onPrimary,
      displayColor: onPrimary,
    ),
  ),
  cardTheme: CardThemeData(
    color: surfaceColor,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: onPrimary),
    titleTextStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: backgroundColor,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey),
  iconTheme: IconThemeData(color: onPrimary),
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
