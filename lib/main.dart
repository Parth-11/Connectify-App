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
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectify'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curIndex,
          onTap: (value) {
            setState(() {
              curIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
