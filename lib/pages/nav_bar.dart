// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smilling_mind/misc/colors.dart';
import 'package:smilling_mind/misc/smiling_mind_icons.dart';
import 'package:smilling_mind/pages/nav_pages/home_page.dart';
import 'package:smilling_mind/pages/nav_pages/meditatePage.dart';
import 'package:smilling_mind/pages/nav_pages/musicPage.dart';
import 'package:smilling_mind/pages/nav_pages/profile_page.dart';
import 'package:smilling_mind/pages/nav_pages/sleep_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

List pages = [
  HomePage(),
  SleepPage(),
  MeditatePage(),
  MusicPage(),
  ProfilePage()
];

int _currentIndex = 0;

void onTap(int index) {
  setState() {
    _currentIndex = index;
  }
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 12,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              color: AppColor.iconColor,
            ),
          ),
          indicatorColor: AppColor.bgColor,
        ),
        child: NavigationBar(
          height: 100,
          elevation: 0,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(
                SmilingMind.home_white,
                color: Colors.white,
              ),
              icon: Icon(
                SmilingMind.home,
                color: AppColor.iconColor,
              ),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                SmilingMind.sleep_white,
                color: Colors.white,
              ),
              icon: Icon(
                SmilingMind.sleep,
                color: AppColor.iconColor,
              ),
              label: "Sleep",
            ),
            NavigationDestination(
              selectedIcon:
                  Icon(SmilingMind.meditate_white, color: Colors.white),
              icon: Icon(SmilingMind.meditate, color: AppColor.iconColor),
              label: "Meditate",
            ),
            NavigationDestination(
              selectedIcon: Icon(SmilingMind.music_white, color: Colors.white),
              icon: Icon(SmilingMind.music, color: AppColor.iconColor),
              label: "Music",
            ),
            NavigationDestination(
              selectedIcon: Icon(SmilingMind.user_white, color: Colors.white),
              icon: Icon(
                SmilingMind.user,
                color: AppColor.iconColor,
              ),
              label: "Ventak",
            ),
          ],
        ),
      ),
    );
  }
}
