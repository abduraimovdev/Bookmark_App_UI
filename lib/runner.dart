import 'package:bookmark/pages/intro_page.dart';
import 'package:bookmark/pages/login_page.dart';
import 'package:bookmark/pages/reading_page.dart';
import 'package:bookmark/pages/registration_page.dart';
import 'package:bookmark/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class Runner extends StatefulWidget {
  static Widget page = IntroPage();

  const Runner({super.key});

  @override
  State<Runner> createState() => _RunnerState();
}

class _RunnerState extends State<Runner> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        IntroPage.id: (context) => IntroPage(),
        WelcomPage.id: (context) => WelcomPage(),
        LoginPage.id: (context) => LoginPage(),
        RegPage.id: (context) => RegPage(),
        ReadingPage.id: (context) => ReadingPage(),
      },
      home: const IntroPage(),
    );
  }
}
