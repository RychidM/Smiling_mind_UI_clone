import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final TextAlign textAlign;
  LargeText(
      {Key? key, required this.text, this.size = 30, this.color = Colors.black, this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
        GoogleFonts.nunito(
          textStyle: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: FontWeight.bold,
          )
        ),
        textAlign: textAlign,
        // textAlign: TextAlign.center,
    );
  }
}
