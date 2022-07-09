import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/pages/nav_bar.dart';
import 'package:smilling_mind/pages/nav_pages/home_page.dart';
import 'package:smilling_mind/widgets/app_text.dart';
import 'package:smilling_mind/widgets/large_text.dart';
import 'package:smilling_mind/widgets/grid_view_staggered.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  Future<bool> onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var WIDTH = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0, 1.5),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 1.8236714975845412)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LargeText(
                    text: "What Brings you",
                    color: AppColor.darkTxtColor,
                    size: 20,
                  ),
                  Row(
                    children: [
                      LargeText(
                        text: "to",
                        color: AppColor.darkTxtColor,
                        size: 20,
                      ),
                      SmallText(
                          fontWeight: FontWeight.normal,
                          text: " Smiling Mind?",
                          color: AppColor.darkTxtColor,
                          size: 20),
                    ],
                  ),
                  SmallText(
                    fontWeight: FontWeight.normal,
                    text: "Choose a topic to focus on:",
                    size: 15,
                    color: AppColor.midTxtColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
              child: MakeStaggeredGrid(),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                child: FaIcon(FontAwesomeIcons.arrowRight),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavBar();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1978000);
    path_0.cubicTo(
        size.width * 1.061667,
        size.height * 0.1804596,
        size.width * 1.103865,
        size.height * 0.1452503,
        size.width * 1.103865,
        size.height * 0.1046358);
    path_0.cubicTo(size.width * 1.103865, size.height * 0.04684702,
        size.width * 1.018430, 0, size.width * 0.9130435, 0);
    path_0.cubicTo(
        size.width * 0.8489976,
        0,
        size.width * 0.7923188,
        size.height * 0.01730212,
        size.width * 0.7577077,
        size.height * 0.04384728);
    path_0.cubicTo(
        size.width * 0.7460459,
        size.height * 0.04203152,
        size.width * 0.7337367,
        size.height * 0.04105960,
        size.width * 0.7210145,
        size.height * 0.04105960);
    path_0.cubicTo(
        size.width * 0.6744420,
        size.height * 0.04105960,
        size.width * 0.6334179,
        size.height * 0.05408159,
        size.width * 0.6093889,
        size.height * 0.07384768);
    path_0.cubicTo(
        size.width * 0.5917488,
        size.height * 0.06345444,
        size.width * 0.5665821,
        size.height * 0.05695364,
        size.width * 0.5386473,
        size.height * 0.05695364);
    path_0.cubicTo(
        size.width * 0.5008841,
        size.height * 0.05695364,
        size.width * 0.4681787,
        size.height * 0.06883391,
        size.width * 0.4522874,
        size.height * 0.08615033);
    path_0.cubicTo(
        size.width * 0.4258623,
        size.height * 0.07769325,
        size.width * 0.3951232,
        size.height * 0.07284768,
        size.width * 0.3623188,
        size.height * 0.07284768);
    path_0.cubicTo(
        size.width * 0.3024758,
        size.height * 0.07284768,
        size.width * 0.2495024,
        size.height * 0.08897351,
        size.width * 0.2170599,
        size.height * 0.1137328);
    path_0.cubicTo(
        size.width * 0.2063995,
        size.height * 0.1121199,
        size.width * 0.1951708,
        size.height * 0.1112583,
        size.width * 0.1835749,
        size.height * 0.1112583);
    path_0.cubicTo(
        size.width * 0.1638640,
        size.height * 0.1112583,
        size.width * 0.1452135,
        size.height * 0.1137479,
        size.width * 0.1286123,
        size.height * 0.1181850);
    path_0.cubicTo(
        size.width * 0.1103164,
        size.height * 0.1005980,
        size.width * 0.07579903,
        size.height * 0.08874172,
        size.width * 0.03623188,
        size.height * 0.08874172);
    path_0.cubicTo(
        size.width * -0.02246505,
        size.height * 0.08874172,
        size.width * -0.07004831,
        size.height * 0.1148338,
        size.width * -0.07004831,
        size.height * 0.1470199);
    path_0.cubicTo(
        size.width * -0.07004831,
        size.height * 0.1722291,
        size.width * -0.04085773,
        size.height * 0.1937007,
        0,
        size.height * 0.2018238);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.1978000);
    path_0.close();
    path_0.moveTo(size.width * 0.6025556, size.height * 0.1496689);
    path_0.lineTo(size.width * 0.6031957, size.height * 0.1496689);
    path_0.cubicTo(
        size.width * 0.6031256,
        size.height * 0.1495987,
        size.width * 0.6030580,
        size.height * 0.1495285,
        size.width * 0.6029879,
        size.height * 0.1494583);
    path_0.cubicTo(
        size.width * 0.6028454,
        size.height * 0.1495285,
        size.width * 0.6027005,
        size.height * 0.1495987,
        size.width * 0.6025556,
        size.height * 0.1496689);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 0.04238411),
        Offset(size.width * 0.5000000, size.height * 0.7225166),
        [Color(0xffFAF8F5).withOpacity(1), Colors.white.withOpacity(0)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
