import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smilling_mind/misc/topics.dart';
import 'package:smilling_mind/widgets/app_text.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class PlaceItems extends StatelessWidget {
  final Topics topics;
  PlaceItems(this.topics);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: topics.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(topics.img),
              fit: BoxFit.cover)),
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SmallText(
          fontWeight: FontWeight.bold,
          text: topics.title,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
