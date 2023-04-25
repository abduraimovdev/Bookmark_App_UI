import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final IconData leftIcon;
  final String inputText;
  final TextEditingController controller;
  final IconData? rightIcon;
  final void Function()? onPress;
  const MyInput({
    super.key,
    required this.leftIcon,
    required this.inputText,
    required this.controller,
    this.rightIcon,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 24,
      ),
      decoration: const BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            width: 1,
            color: Color.fromRGBO(61, 78, 237, 0.2),
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Icon(leftIcon),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: inputText,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "raleway",
                  ),
                  isCollapsed: true,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          rightIcon != null
              ? Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: onPress,
                    child: Icon(rightIcon),
                  ),
                )
              : const SizedBox(
                  width: 10,
                ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
