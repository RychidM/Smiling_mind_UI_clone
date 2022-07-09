import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/widgets/app_text.dart';
import 'package:smilling_mind/widgets/large_text.dart';

import 'getting_started.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.bgColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, .9),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 1.1884057971014492)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: PainElipse(),
              ),
            ),
            Align(
              alignment: Alignment(0, -.1),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 0.34782608695652173)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
            Align(
              alignment: Alignment(0, -.85),
              child: Image(image: AssetImage("imgs/logo-white.png")),
            ),
            Align(
              alignment: Alignment(0, 1.1),
              child: Container(
                child: CustomPaint(
                  size: Size(
                      WIDTH,
                      (WIDTH * 0.6618357487922706)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: DrawBall(),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, .3),
              child: Image(image: AssetImage("imgs/yoga_girl.png")),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0, bottom: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        LargeText(
                          text: "Hi Venkat, Welcome \nto Smiling Mind",
                          size: 20,
                          color: AppColor.titleTextColor,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Explore thr app, Find some peace of mind \nto prepare for meditation.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColor.lytTxtColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.btnColor,
                          borderRadius: BorderRadius.circular(50)),
                      width: 300,
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return GettingStartedPage();
                                },
                              ),
                            );
                          },
                          child: Center(child: Text("GET STARTED"))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class PainElipse extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff9AA2FD).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5942029, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff949DFF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5942029, paint_1_fill);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff9AA2FD).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5096618, paint_2_fill);

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff99A1FF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5096618, paint_3_fill);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff9AA2FD).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.4275362, paint_4_fill);

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff9EA6FF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.4275362, paint_5_fill);

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffA3ABFF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.3429952, paint_6_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7159420, size.height * 0.5416667);
    path_0.cubicTo(
        size.width * 0.7121473,
        size.height * 0.4845326,
        size.width * 0.6911715,
        size.height * 0.4553701,
        size.width * 0.6811594,
        size.height * 0.4479313);
    path_0.cubicTo(
        size.width * 0.7051908,
        size.height * 0.4300764,
        size.width * 0.7164686,
        size.height * 0.4851278,
        size.width * 0.7191039,
        size.height * 0.5148847);
    path_0.cubicTo(
        size.width * 0.7456643,
        size.height * 0.4720347,
        size.width * 0.7628454,
        size.height * 0.5000062,
        size.width * 0.7681159,
        size.height * 0.5193486);
    path_0.cubicTo(
        size.width * 0.7478792,
        size.height * 0.5014944,
        size.width * 0.7249010,
        size.height * 0.5267882,
        size.width * 0.7159420,
        size.height * 0.5416667);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffB4BAFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1492754, size.height * 0.6527778);
    path_1.cubicTo(
        size.width * 0.1469565,
        size.height * 0.6201299,
        size.width * 0.1341384,
        size.height * 0.6034653,
        size.width * 0.1280193,
        size.height * 0.5992146);
    path_1.cubicTo(
        size.width * 0.1427053,
        size.height * 0.5890118,
        size.width * 0.1495973,
        size.height * 0.6204701,
        size.width * 0.1512077,
        size.height * 0.6374743);
    path_1.cubicTo(
        size.width * 0.1674396,
        size.height * 0.6129882,
        size.width * 0.1779389,
        size.height * 0.6289722,
        size.width * 0.1811594,
        size.height * 0.6400243);
    path_1.cubicTo(
        size.width * 0.1687923,
        size.height * 0.6298222,
        size.width * 0.1547505,
        size.height * 0.6442757,
        size.width * 0.1492754,
        size.height * 0.6527778);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffB4BAFF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8339324, size.height * 0.7987847);
    path_2.cubicTo(
        size.width * 0.7179928,
        size.height * 0.7050347,
        size.width * 0.7348986,
        size.height * 0.9862847,
        size.width * 0.7590531,
        size.height * 0.9862847);
    path_2.cubicTo(
        size.width * 0.7689783,
        size.height * 0.9862847,
        size.width * 0.7895483,
        size.height * 0.9932292,
        size.width * 0.8146111,
        size.height * 0.9932292);
    path_2.lineTo(size.width * 0.8906981, size.height * 0.9932292);
    path_2.cubicTo(
        size.width * 0.9873140,
        size.height * 0.9932292,
        size.width * 1.015094,
        size.height * 0.9747083,
        size.width * 1.016302,
        size.height * 0.9689236);
    path_2.cubicTo(
        size.width * 1.024756,
        size.height * 0.7848958,
        size.width * 0.9736280,
        size.height * 0.8022569,
        size.width * 0.9462536,
        size.height * 0.8230903);
    path_2.cubicTo(
        size.width * 0.9506812,
        size.height * 0.7548056,
        size.width * 0.9460121,
        size.height * 0.6168417,
        size.width * 0.8919034,
        size.height * 0.6112861);
    path_2.cubicTo(
        size.width * 0.8377971,
        size.height * 0.6057306,
        size.width * 0.8307126,
        size.height * 0.7339722,
        size.width * 0.8339324,
        size.height * 0.7987847);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffB4BAFF).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.01873365, size.height * 0.2763014);
    path_3.cubicTo(
        size.width * -0.03205725,
        size.height * 0.2354111,
        size.width * -0.02465072,
        size.height * 0.3580819,
        size.width * -0.01406932,
        size.height * 0.3580819);
    path_3.cubicTo(
        size.width * -0.009721981,
        size.height * 0.3580819,
        size.width * -0.0007104686,
        size.height * 0.3611111,
        size.width * 0.01026918,
        size.height * 0.3611111);
    path_3.lineTo(size.width * 0.04360121, size.height * 0.3611111);
    path_3.cubicTo(
        size.width * 0.08592705,
        size.height * 0.3611111,
        size.width * 0.09809589,
        size.height * 0.3530340,
        size.width * 0.09862560,
        size.height * 0.3505097);
    path_3.cubicTo(
        size.width * 0.1023292,
        size.height * 0.2702438,
        size.width * 0.07993140,
        size.height * 0.2778160,
        size.width * 0.06793889,
        size.height * 0.2869028);
    path_3.cubicTo(
        size.width * 0.06987899,
        size.height * 0.2571181,
        size.width * 0.06783285,
        size.height * 0.1969438,
        size.width * 0.04412947,
        size.height * 0.1945208);
    path_3.cubicTo(
        size.width * 0.02042604,
        size.height * 0.1920972,
        size.width * 0.01732249,
        size.height * 0.2480313,
        size.width * 0.01873365,
        size.height * 0.2763014);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffA6ADFB).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffA6ADFB).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.09420290, size.height * 0.1180556),
        size.width * 0.01449275, paint_4_fill);

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffA6ADFB).withOpacity(1.0);
// canvas.drawCircle(Offset(size.width*NaN,size.height*NaN),size.width*0.007246377,paint_5_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class DrawBall extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff8C96FF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * -0.004830918, size.height * 0.1167883,
            size.width * 1.004831, size.height * 0.9708029),
        paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1608297, 0);
    path_1.lineTo(size.width * -0.02173913, size.height * 0.1204380);
    path_1.lineTo(size.width * 1.016908, size.height * 0.1204380);
    path_1.lineTo(size.width * 0.8393671, 0);
    path_1.lineTo(size.width * 0.1608297, 0);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff8C96FF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
