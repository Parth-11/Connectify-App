import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Connectify'),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(),
              child: Text('Login'),
            ),
            TextButton(onPressed: () {}, child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}
