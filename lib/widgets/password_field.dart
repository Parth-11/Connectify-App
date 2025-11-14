import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w300,
        letterSpacing: obscure ? 3 : 1,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => setState(() => obscure = !obscure),
          child: Icon(
            obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          ),
        ),
        suffixIconColor: Colors.grey.shade700,
      ),
      cursorWidth: 1,
      cursorColor: Colors.grey.shade700,
    );
  }
}
