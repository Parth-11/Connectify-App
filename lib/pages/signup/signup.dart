import 'package:connectify/pages/feed/feed.dart';
import 'package:connectify/pages/signup/widgets/agreement_text.dart';
import 'package:connectify/widgets/password_field.dart';
import 'package:flutter/material.dart';

import 'widgets/signin_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Connectify",
                  style: TextStyle(
                    fontSize: 36,
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Spacer(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "Create an Account?",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const SignInText(),
                      const SizedBox(height: 24),
                      Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                          cursorWidth: 1,
                          cursorColor: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                          cursorWidth: 1,
                          cursorColor: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                          cursorWidth: 1,
                          cursorColor: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: PasswordField(),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: agreed,
                            onChanged: (val) {
                              if (val != null) {
                                setState(() => agreed = val);
                              }
                            },
                            fillColor: WidgetStateProperty.all(
                              theme.scaffoldBackgroundColor,
                            ),
                            checkColor: theme.colorScheme.primary,
                          ),
                          AgreementText(
                            onTap: () {
                              // TODO: Open terms of service in web
                              print("Terms of Service displayed!");
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            theme.colorScheme.tertiary,
                          ),
                          textStyle: WidgetStateProperty.all(
                            TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          padding: WidgetStateProperty.all(EdgeInsets.all(16)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => FeedPage()),
                          );
                        },
                        child: Text("Create Account"),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
