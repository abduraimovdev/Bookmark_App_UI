import 'package:bookmark/pages/reading_page.dart';
import 'package:bookmark/pages/registration_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../service/input.dart';

class LoginPage extends StatefulWidget {
  static final String id = "login_page";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController login = TextEditingController();
TextEditingController logPassword = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 70,
          right: 24,
        ),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Log into account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Get back to your reading list.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              MyInput(
                leftIcon: Icons.email,
                inputText: "Enter full email address",
                controller: login,
              ),
              MyInput(
                leftIcon: Icons.lock,
                inputText: "Enter Password",
                controller: logPassword,
                rightIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ReadingPage.id);
                },
                child: Container(
                  width: double.infinity,
                  height: 64,
                  color: const Color(0xFF3D4EED),
                  alignment: Alignment.center,
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "raleway",
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                          color: Color(0xFF3D4EED),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "raleway",
                          decoration: TextDecoration.underline),
                      text: "Log in",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context)
                              .pushReplacementNamed(RegPage.id);
                        },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
