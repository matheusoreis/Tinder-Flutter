import 'package:flutter/material.dart';
import 'package:tinder_app/color/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final mediaQuery = MediaQuery.of(context);
    final appFullSize = mediaQuery.size;
    const logoFile = 'assets/logo.png';
    //
    return Container(
      width: appFullSize.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [colorCarnation, colorHotPink]),
      ),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset(
                logoFile,
                width: 250,
                // height: appFullSize.height,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: colorWhite,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: colorWhite,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: colorWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
