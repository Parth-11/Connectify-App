import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreementText extends StatelessWidget {
  final VoidCallback onTap;

  const AgreementText({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.grey.shade500),
        children: [
          const TextSpan(text: "I agree to the "),
          TextSpan(
            text: "Terms of Service.",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
