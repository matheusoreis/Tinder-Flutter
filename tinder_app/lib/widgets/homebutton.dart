import 'package:flutter/material.dart';
import '../color/colors.dart';

class ButtonHomePage extends StatelessWidget {
  const ButtonHomePage({
    Key? key,
    required this.buttonText,
    required this.buttonIcon,
  }) : super(key: key);

  final String buttonText;
  final String buttonIcon;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appFullSize = mediaQuery.size;

    return ElevatedButton.icon(
      onPressed: () {},
      icon: Image.network(
        buttonIcon,
        width: 22,
      ),
      label: Text(
        buttonText.toUpperCase(),
        style: const TextStyle(
          color: Color.fromARGB(255, 66, 66, 66),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          colorWhite,
        ),
        minimumSize: MaterialStateProperty.all(
          Size(appFullSize.width, 68),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
