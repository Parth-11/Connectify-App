import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Connectify', style: TextStyle(fontSize: 40)),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '');
            },
            style: TextButton.styleFrom(fixedSize: Size(300, 10)),
            child: Text('Login'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '');
            },
            style: TextButton.styleFrom(fixedSize: Size(300, 10)),
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
