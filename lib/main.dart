import 'package:connectify/controllers/theme.dart';
import 'package:connectify/pages/signin/signin.dart';
import 'package:flutter/material.dart';

import 'config/themes/dark_theme.dart';
import 'config/themes/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Connectify());
}

class Connectify extends StatelessWidget {
  const Connectify({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeController.themeMode,
      builder: (context, mode, _) => MaterialApp(
        title: 'Connectify',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: mode,
        home: SignInPage(),
      ),
    );
  }
}
