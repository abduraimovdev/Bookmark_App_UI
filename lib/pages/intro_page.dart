import 'package:bookmark/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
void changer(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.of(context).pushReplacementNamed(WelcomPage.id));
    // Runner.page = WelcomPage();
    // setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    changer(context);
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D4EED),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo_white.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
