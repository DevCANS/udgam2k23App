import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/screens/about/about_screen.dart';
import 'package:udgam2k23/screens/events/events_screen.dart';
import 'package:udgam2k23/screens/gallery/gallery_screen.dart';
import 'package:udgam2k23/screens/home/home_screen.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  final List<Widget> _children = [
    const HomeScreen(),
    const EventsScreen(),
    const GalleryScreen(),
    const AboutScreen(),
  ];
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _children[_currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        color: backgroundColor,
        height: 60,
        backgroundColor: Colors.white,
        items: [
          Icon(
            Icons.home,
            size: size.height * 0.03,
          ),
          Icon(
            Icons.calendar_month,
            size: size.height * 0.03,
          ),
          Icon(
            Icons.image,
            size: size.height * 0.03,
          ),
          Icon(
            Icons.info_rounded,
            size: size.height * 0.03,
          ),
        ],
        onTap: _onTap,
        index: _currentTabIndex,
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }
}
