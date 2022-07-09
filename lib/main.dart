import 'package:flutter/material.dart';
import 'package:smilling_mind/pages/onBoardingScrren.dart';

import 'pages/welcome_screen.dart';

void main() => runApp(const SmillinMindApp());

class SmillinMindApp extends StatelessWidget {
  const SmillinMindApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smillin Mind App UI CLone",
      home: OnBoardingPage(),
    );
  }
}
