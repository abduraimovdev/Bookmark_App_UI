import 'package:bookmark/pages/intro_page.dart';
import 'package:bookmark/pages/login_page.dart';
import 'package:bookmark/pages/reading_page.dart';
import 'package:bookmark/pages/registration_page.dart';
import 'package:bookmark/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class Runner extends StatelessWidget {
  const Runner({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReadingPage(),
    );
  }
}
