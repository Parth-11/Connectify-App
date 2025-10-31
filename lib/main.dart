import 'package:connectify/pages/landing_page.dart';
import 'package:connectify/pages/profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Connectify());
}

class Connectify extends StatefulWidget {
  const Connectify({super.key});

  @override
  State<Connectify> createState() => _ConnectifyState();
}

class _ConnectifyState extends State<Connectify> {
  List<Widget Function()> pages = [() => LandingPage(), () => ProfilePage()];

  int curIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectify'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
        ),
        body: SafeArea(child: pages[curIndex]()),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: curIndex,
          onTap: (value) => setState(() => curIndex = value),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
