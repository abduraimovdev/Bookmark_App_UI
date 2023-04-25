import 'package:bookmark/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../service/input.dart';

class RegPage extends StatefulWidget {
  static final String id = "registration_page";
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController passwordSecond = TextEditingController();

class _RegPageState extends State<RegPage> {
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
                "Create an account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Start your book journey with us.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              MyInput(
                leftIcon: Icons.person,
                inputText: "Enter full name",
                controller: name,
              ),
              MyInput(
                leftIcon: Icons.email,
                inputText: "Enter full email address",
                controller: name,
              ),
              MyInput(
                leftIcon: Icons.lock,
                inputText: "Enter Password",
                controller: password,
                rightIcon: Icons.remove_red_eye,
              ),
              MyInput(
                leftIcon: Icons.lock,
                inputText: "Re-enter Password",
                controller: passwordSecond,
                rightIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
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
                        decoration: TextDecoration.underline,
                      ),
                      text: "Log in",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginPage.id);
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
