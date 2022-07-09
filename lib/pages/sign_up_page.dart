// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/pages/login_page.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Align(
              alignment: Alignment(0, -1.65),
              child: CustomPaint(
                size: Size(
                    WIDTH,
                    (WIDTH * 1.2173913043478262)
                        .toDouble()), 
                painter: PaintCurves(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage("imgs/Walking-the-dog.png"),
                    height: 200,
                    width: 300,
                  ),
                  SizedBox(height: 65),
                  Container(
                    child: LargeText(
                      text: "Sign Up",
                      color: AppColor.darkTxtColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF8F5),
                        border: Border.all(
                            color: Colors.grey.withOpacity(.5), width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Fullname",
                            icon: FaIcon(
                              FontAwesomeIcons.user,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF8F5),
                        border: Border.all(
                            color: Colors.grey.withOpacity(.5), width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            icon: FaIcon(
                              FontAwesomeIcons.at,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF8F5),
                        border: Border.all(
                            color: Colors.grey.withOpacity(.5), width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "password",
                            icon: FaIcon(
                              FontAwesomeIcons.lock,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF8F5),
                        border: Border.all(
                            color: Colors.grey.withOpacity(.5), width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm password",
                            icon: FaIcon(
                              FontAwesomeIcons.lock,
                              size: 18,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.bgSeat),
                      child: Center(
                        child: LargeText(
                          text: "Sign up",
                          size: 18,
                          color: AppColor.lytTxtColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: GestureDetector(
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
                        text: "Joined us before? Login",
                        size: 13,
                        color: AppColor.bgSeat,
                      ),
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
