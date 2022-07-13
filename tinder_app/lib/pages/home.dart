import 'package:flutter/material.dart';
import 'package:tinder_app/color/colors.dart';
import '../widgets/homebutton.dart';
import '../widgets/homebuttontext.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.textTermos,
    required this.googleButtonText,
    required this.googleIconUrl,
    required this.facebookButtonText,
    required this.facebookIconUrl,
    required this.telButtonText,
    required this.telButtonIconUrl,
    required this.homeButtonText,
  }) : super(key: key);

  final String textTermos;
  final String googleButtonText;
  final String googleIconUrl;
  final String facebookButtonText;
  final String facebookIconUrl;
  final String telButtonText;
  final String telButtonIconUrl;
  final String homeButtonText;

  @override
  Widget build(BuildContext context) {
    //
    final mediaQuery = MediaQuery.of(context);
    final appFullSize = mediaQuery.size;

    double sizes = appFullSize.height;
    const logoFile = 'assets/logo.png';

    int mobileExpand;

    if (sizes <= 800) {
      mobileExpand = 3;
    } else {
      mobileExpand = 7;
    }

    return Container(
      width: appFullSize.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [colorCarnation, colorHotPink]),
      ),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: mobileExpand,
              child: Image.asset(
                logoFile,
                width: 250,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                textTermos,
                style: const TextStyle(
                    color: colorWhite,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonHomePage(
                    buttonText: googleButtonText,
                    buttonIcon: googleIconUrl,
                  ),
                  ButtonHomePage(
                    buttonText: facebookButtonText,
                    buttonIcon: facebookIconUrl,
                  ),
                  ButtonHomePage(
                    buttonText: telButtonText,
                    buttonIcon: telButtonIconUrl,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: HomeTextButton(
                buttonText: homeButtonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
