import 'package:flutter/material.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class SleepPage extends StatelessWidget {
  const SleepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LargeText(text: "Sleep Page"),
    ));
  }
}
