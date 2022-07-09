// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/widgets/app_text.dart';
import 'package:smilling_mind/widgets/large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pics = {
    "levitating-man.png": "Focus",
    "yoga_girl-two.png": "Happiness",
    "levitating-man-two.png": "Meditate",
    "yoga_girl-three.png": "Inner Peace",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: const AssetImage("imgs/logo-black.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              LargeText(
                text: "Good Morning, Ventak",
                size: 18,
                color: AppColor.darkTxtColor,
                textAlign: TextAlign.right,
              ),
              SmallText(
                text: "We Wish you have a good day",
                size: 13,
                color: AppColor.darkTxtColor,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.bgSeat,
                          image: DecorationImage(
                              image: AssetImage("imgs/peace_heart.png"),
                              alignment: Alignment.topRight),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(
                                    text: "Basics",
                                    size: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.titleTextColor,
                                  ),
                                  SmallText(
                                    text: "COURSE",
                                    size: 10,
                                    color: AppColor.lytTxtColor,
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SmallText(
                                        text: "3-10 MIN",
                                        size: 10,
                                        color: AppColor.lytTxtColor,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: AppColor.btnColor),
                                        child: SmallText(
                                          text: "START",
                                          size: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 210,
                        decoration: BoxDecoration(
                            color: AppColor.anxietyColor,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("imgs/music_girl.png"),
                                alignment: Alignment.topRight)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(
                                    text: "Relaxation",
                                    size: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkTxtColor,
                                  ),
                                  SmallText(
                                    text: "MUSIC",
                                    size: 10,
                                    color: AppColor.darkTxtColor,
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SmallText(
                                        text: "3-10 MIN",
                                        size: 10,
                                        color: AppColor.darkTxtColor,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: AppColor.darkTxtColor),
                                        child: SmallText(
                                          text: "START",
                                          color: AppColor.lytTxtColor,
                                          size: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  height: 95,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("imgs/daily-thought.png"),fit: BoxFit.cover),
                      color: AppColor.darkBgColor),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LargeText(
                              text: "Daily Thought",
                              size: 16,
                              color: AppColor.lytTxtColor,
                            ),
                            SmallText(
                              text: "MEDITATION * 3-10 MIN",
                              size: 11,
                              color: AppColor.lytTxtColor,
                            )
                          ],
                        ),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            // padding: const EdgeInsets.all(10),
                            child: Center(
                                child: FaIcon(
                              FontAwesomeIcons.play,
                              size: 15,
                            )))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LargeText(
                text: "Recommended for you",
                size: 18,
                color: AppColor.darkTxtColor,
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: pics.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 113.5,
                              width: 162,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                                  child: Image(image: AssetImage("imgs/${pics.keys.elementAt(index)}"),)
                            ),
                            SizedBox(height:10),
                            Container(
                              child:
                                  SmallText(text: pics.values.elementAt(index)),
                            ),
                            LargeText(text: "MEDITATION 3-10 MIN", size: 10,)
      
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
