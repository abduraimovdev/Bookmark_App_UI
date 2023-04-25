import 'package:flutter/material.dart';

class ReadingPage extends StatefulWidget {
  static final String id = "reading_page";

  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  static String text =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing ultrices suspendisse augue rhoncus, pretium bibendum luctus massa. Enim pellentesque diam vel at morbi non faucibus erat. 
Tincidunt viverra metus, ac quis. Tempor eget a in sed integer. Dignissim tincidunt sed a sapien ac. Aliquam in laoreet faucibus pretium suspendisse aliquam viverra. Quis egestas lorem suspendisse enim massa sed auctor pretium. Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. Morbi sit scelerisque odio iaculis tristique volutpat gravida sed vestibulum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. . .''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                padding: const EdgeInsets.only(left: 5, right: 11),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                    ),
                    SizedBox(
                      width: 104,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.share,
                          ),
                          Icon(
                            Icons.more_vert,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Son of the Storm",
                          style: TextStyle(
                            color: Color(0xFF3D4EED),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.02,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Chapter 3 - Lorem ipsum dolor sit amet",
                          style: TextStyle(
                            color: const Color(0xFF030000).withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      size: 30,
                      color: Color(0xFF3D4EED),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.63,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontFamily: "raleway",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        strutStyle: const StrutStyle(
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                ),
                width: double.infinity,
                height: 83,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.music_note_sharp,
                      color: Color(0xFF3D4EED),
                    ),
                    Text(
                      "Page 32 of 245",
                      style: TextStyle(
                        color: const Color(0xFF030000).withOpacity(0.6),
                      ),
                    ),
                    const Icon(
                      Icons.file_copy,
                      color: Color(0xFF3D4EED),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
