import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({Key? key}) : super(key: key);

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(text: "MEditate Page"),
      ),
    );
  }
}
