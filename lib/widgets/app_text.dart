import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  SmallText({Key? key, required this.text, this.textAlign = TextAlign.center, this.fontWeight = FontWeight.normal, this.size = 15, this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
          textStyle: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: fontWeight,
          ),
        ),
        textAlign: textAlign,
    );
  }
}