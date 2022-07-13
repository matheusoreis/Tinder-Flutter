import 'package:flutter/material.dart';
import 'package:tinder_app/color/colors.dart';

class HomeTextButton extends StatelessWidget {
  const HomeTextButton({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size.infinite,
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: colorWhite,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
