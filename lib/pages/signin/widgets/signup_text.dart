import 'package:connectify/pages/signup/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.grey.shade500),
        children: [
          const TextSpan(text: "No Account? "),
          TextSpan(
            text: "Sign Up",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => SignUpPage()),
              ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
