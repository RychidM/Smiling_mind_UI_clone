import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/pages/login_page.dart';
import 'package:smilling_mind/pages/sign_up_page.dart';
import 'package:smilling_mind/widgets/app_text.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Align(
              alignment: Alignment(0, -1),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 1.2173913043478262)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: PaintCurves(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage("imgs/logo-black.png")),
            ),
          ),
          Align(
            alignment: Alignment(0, -.4),
            child: Image(
              image: AssetImage("imgs/welcome.png"),
              height: 200,
              width: 300,
            ),
          ),
          // SizedBox(height: 100),
          Container(
            margin: const EdgeInsets.only(top: 400),
            // padding: const EdgeInsets.only(left: 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LargeText(
                    text: "We are what we do",
                    size: 25,
                    color: AppColor.darkTxtColor,
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 52,
                    width: 309,
                    // alignment: Alignment(0, .45),
                    child: Text(
                      "Thousand of people are usign silent moon for smalls meditation",
                      style: GoogleFonts.nunito(
                        color: AppColor.midTxtColor,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      fixedSize: Size(300, 60),
                      padding: EdgeInsets.all(20),
                      primary: AppColor.bgColor,
                    ),
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.nunito(
                        color: AppColor.lytTxtColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: LargeText(
                      text: "ALREADY HAVE AN ACCOUNT?  LOG IN",
                      size: 10,
                      color: AppColor.bgColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaintCurves extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * -0.001984127);
    path_0.lineTo(0, size.height * 0.7560575);
    path_0.cubicTo(
        0,
        size.height * 0.7560575,
        size.width * 0.07786256,
        size.height * 0.8924365,
        size.width * 0.2780483,
        size.height * 0.8766091);
    path_0.cubicTo(
        size.width * 0.4782343,
        size.height * 0.8607837,
        size.width * 0.5197512,
        size.height * 0.7755476,
        size.width * 0.7614565,
        size.height * 0.9326369);
    path_0.cubicTo(
        size.width * 0.7614565,
        size.height * 0.9326369,
        size.width * 0.8467222,
        size.height * 0.9983829,
        size.width * 1.002415,
        size.height * 0.9959663);
    path_0.lineTo(size.width * 1.002415, size.height * -0.001984127);
    path_0.lineTo(0, size.height * -0.001984127);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFAF8F5).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9713744, size.height);
    path_1.cubicTo(
        size.width * 0.8438527,
        size.height,
        size.width * 0.7682899,
        size.height * 0.9517103,
        size.width * 0.7674831,
        size.height * 0.9511528);
    path_1.cubicTo(
        size.width * 0.6163889,
        size.height * 0.8536468,
        size.width * 0.5237633,
        size.height * 0.8722421,
        size.width * 0.3955990,
        size.height * 0.8980159);
    path_1.cubicTo(
        size.width * 0.3616063,
        size.height * 0.9048512,
        size.width * 0.3264203,
        size.height * 0.9119226,
        size.width * 0.2863019,
        size.height * 0.9178571);
    path_1.cubicTo(
        size.width * 0.09021570,
        size.height * 0.9468889,
        size.width * -0.006278841,
        size.height * 0.8624405,
        size.width * -0.007246377,
        size.height * 0.8615675);
    path_1.lineTo(size.width * -0.004859807, size.height * 0.8597917);
    path_1.cubicTo(
        size.width * -0.003924541,
        size.height * 0.8606389,
        size.width * 0.09153792,
        size.height * 0.9440020,
        size.width * 0.2856884,
        size.height * 0.9152599);
    path_1.cubicTo(
        size.width * 0.3257440,
        size.height * 0.9093274,
        size.width * 0.3608333,
        size.height * 0.9022817,
        size.width * 0.3947923,
        size.height * 0.8954464);
    path_1.cubicTo(
        size.width * 0.5238599,
        size.height * 0.8695139,
        size.width * 0.6170966,
        size.height * 0.8507857,
        size.width * 0.7694517,
        size.height * 0.9490873);
    path_1.cubicTo(
        size.width * 0.7703865,
        size.height * 0.9496964,
        size.width * 0.8620749,
        size.height * 1.008238,
        size.width * 1.014138,
        size.height * 0.9955496);
    path_1.lineTo(size.width * 1.014461, size.height * 0.9981726);
    path_1.cubicTo(
        size.width * 0.9995290,
        size.height * 0.9994444,
        size.width * 0.9851449,
        size.height,
        size.width * 0.9713744,
        size.height);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffF9F0E3).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
