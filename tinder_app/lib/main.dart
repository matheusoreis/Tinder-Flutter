import 'package:flutter/material.dart';

// Pages
import 'pages/home.dart';

void main() {
  runApp(const Tinder());
}

class Tinder extends StatefulWidget {
  const Tinder({Key? key}) : super(key: key);

  @override
  TinderState createState() {
    return TinderState();
  }
}

class TinderState extends State<Tinder> {
  static const String textoTemos =
      'Ao tocar em entrar, você concorda com os nossos Temos. Saiba como processamos seus dados em nossa Política de Privacidade e Política de Cookies.';

  static const String googleButtonText = 'Entrar com o Google';
  static const String googleIconUrl =
      'https://cdn-icons-png.flaticon.com/512/2991/2991148.png';

  static const String facebookButtonText = 'Entrar com o Facebook';
  static const String facebookIconUrl =
      'https://cdn-icons-png.flaticon.com/512/5968/5968764.png';

  static const String telButtonText = 'Entrar com o WhatsApp';
  static const String telButtonIconUrl =
      'https://cdn-icons-png.flaticon.com/512/733/733585.png';

  static const String homeButtonText = 'Problemas em fazer login?';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pergunta APP',
      theme: ThemeData(),
      home: const Scaffold(
        body: HomePage(
          textTermos: textoTemos,
          googleButtonText: googleButtonText,
          googleIconUrl: googleIconUrl,
          facebookButtonText: facebookButtonText,
          facebookIconUrl: facebookIconUrl,
          telButtonText: telButtonText,
          telButtonIconUrl: telButtonIconUrl,
          homeButtonText: homeButtonText,
        ),
      ),
    );
  }
}
