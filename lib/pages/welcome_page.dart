import 'package:bookmark/pages/login_page.dart';
import 'package:bookmark/pages/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomPage extends StatefulWidget {
  static const String id = "welcome_page";
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_backgrouund.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_blue.png"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              child: Container(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 64,
                      color: const Color(0xFF3D4EED),
                      alignment: Alignment.center,
                      child: const Text(
                        "Log into account",
                        style: TextStyle(
                          fontFamily: "raleway",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegPage.id);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 64,
                        margin: const EdgeInsets.only(top: 24),
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: const Text(
                          "Create an account",
                          style: TextStyle(
                            fontFamily: "raleway",
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
