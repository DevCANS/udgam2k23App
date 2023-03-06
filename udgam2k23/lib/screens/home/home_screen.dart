// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/home/widgets/featured_card1.dart';
import 'package:udgam2k23/screens/home/widgets/featured_card2.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Methods method = Methods();
  List imageList = [
    {"id": "1", "image_path": 'assets/carousel/img1.jpeg'},
    {"id": "2", "image_path": 'assets/carousel/img2.jpg'},
    {"id": "3", "image_path": 'assets/carousel/img3.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  // int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/udgam.png",
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_3_rounded,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.fill,
                                width: size.width * 0.95,
                              ),
                            )
                            .toList(),
                        disableGesture: false,
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2.05,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "featured events",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const FeaturedCard1(
                text1: "30+ Exciting Events",
                text2:
                    "Whether you're an introvert or an extrovert,\nthere's something for everyone at our events.\nJoin us and have a blast",
                imagePath: "assets/featured_events/fev1.png",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const FeaturedCard2(
                text1: "Crazy Fiesta Night!",
                text2:
                    "Shake your maracas and dance the night away\nat our Fiesta celebration",
                imagePath: "assets/featured_events/fev2.png",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const FeaturedCard1(
                text1: "30+ Exciting Events",
                text2:
                    "Whether you're an introvert or an extrovert,\nthere's something for everyone at our events.\nJoin us and have a blast",
                imagePath: "assets/featured_events/fev1.png",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const FeaturedCard2(
                text1: "Crazy Fiesta Night!",
                text2:
                    "Shake your maracas and dance the night away\nat our Fiesta celebration",
                imagePath: "assets/featured_events/fev2.png",
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "visit us",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      method
                          .launch("https://www.facebook.com/udgam.nitsikkim/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method
                          .launch("https://www.instagram.com/udgam_nitsikkim/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method.launch("https://www.youtube.com/@NITSikkimUdgam");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method.launch("http://udgam.nitsikkim.ac.in/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.globe,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        animationCurve: Curves.easeOut,
        color: backgroundColor,
        height: 58,
        backgroundColor: Colors.white,
        items: [
          Icon(
            Icons.home,
            size: size.height * 0.04,
          ),
          Icon(
            Icons.calendar_month,
            size: size.height * 0.04,
          ),
          Icon(
            Icons.image,
            size: size.height * 0.04,
          ),
          Icon(
            Icons.info_rounded,
            size: size.height * 0.04,
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
