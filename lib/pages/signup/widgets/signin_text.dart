import 'package:connectify/pages/signin/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.grey.shade500),
        children: [
          const TextSpan(text: "Already have an account? "),
          TextSpan(
            text: "Sign In",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => SignInPage()),
              ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
