// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/auth_methods.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/events/events_screen.dart';
import 'package:udgam2k23/screens/gallery/gallery_screen.dart';
import 'package:udgam2k23/screens/home/widgets/featured_card1.dart';
import 'package:udgam2k23/screens/home/widgets/featured_card2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  // if(user != null) {final profilePhoto = user.url;}
  Methods method = Methods();
  List imageList = [
    {"id": "1", "image_path": 'assets/carousel/img1.JPG'},
    {"id": "2", "image_path": 'assets/carousel/img2.JPG'},
    {"id": "3", "image_path": 'assets/carousel/img3.JPG'},
    {"id": "3", "image_path": 'assets/carousel/img4.JPG'},
    {"id": "3", "image_path": 'assets/carousel/img5.JPG'},
    {"id": "3", "image_path": 'assets/carousel/img6.JPG'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: size.height * 0.91,
        child: SingleChildScrollView(
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
                        const Text(
                          " udgam 2k23",
                          style: TextStyle(
                            fontFamily: 'Samarkan',
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: AuthMethods().getProfilePic(),
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
                    Divider(
                      color: dividerColor,
                      thickness: size.height * 0.01,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const EventsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(205, 182, 225, 255),
                            ),
                            height: size.height * 0.18,
                            width: size.width * 0.4,
                            child: Center(
                              child: Text(
                                "Events",
                                style: GoogleFonts.pirataOne(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            // color: Colors.black,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const GalleryScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(205, 182, 225, 255),
                            ),
                            height: size.height * 0.18,
                            width: size.width * 0.4,
                            child: Center(
                              child: Text(
                                "Gallery",
                                style: GoogleFonts.pirataOne(
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            // color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
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
                      "Whether you're an introvert or an extrovert, there's something for everyone at our events. Join us and have a blast",
                  imagePath: "assets/featured_events/collage.png",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const FeaturedCard2(
                  text1: "Crazy Fiesta Night!",
                  text2:
                      "Shake your maracas and dance the night away at our Fiesta celebration",
                  imagePath: "assets/featured_events/fiesta.png",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const FeaturedCard1(
                  text1: "FllaaashhMobbbb !!",
                  text2:
                      "Imagine a regular day... then BOOM! A flashmob appears! 🤯 Be part of the excitement!",
                  imagePath: "assets/featured_events/flashmob.png",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const FeaturedCard2(
                  text1: "YES! EDM Night too",
                  text2:
                      "Ready to experience an unforgettable night filled with non-stop dancing and epic beats? Join us for our EDM night! 🎉",
                  imagePath: "assets/featured_events/edm.png",
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
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Stay up-to-date with our latest news and events by subscribing to our newsletter. By subscribing, you'll receive regular updates straight to your inbox about our organization's activities, news, and events.",
                  maxLines: 7,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.002,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        method.launch(
                            "https://www.facebook.com/udgam.nitsikkim/");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.facebook,
                        color: dividerColor,
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        method.launch(
                            "https://www.instagram.com/udgam_nitsikkim/");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: dividerColor,
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        method
                            .launch("https://www.youtube.com/@NITSikkimUdgam");
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
      ),
    );
  }
}
