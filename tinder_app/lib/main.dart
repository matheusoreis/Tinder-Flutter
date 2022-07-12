import 'package:flutter/material.dart';

// Pages
import './pages/counter.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pergunta APP',
      theme: ThemeData(),
      home: const Scaffold(
        body: HomePage(), //Counter(),
      ),
    );
  }
}
