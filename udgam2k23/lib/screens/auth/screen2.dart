import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/screens/about/about_screen.dart';
import 'package:udgam2k23/screens/auth/screen3.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.30,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/auth/t2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.08,
                top: size.height * 0.06,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    textScaleFactor: 1.0,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "udgam 2k23",
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontFamily: 'Samarkan',
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.25,
            ),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/auth/i4.png",
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: size.width * 0.25,
                    ),
                    child: Image.asset(
                      "assets/auth/i5.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.25,
                    ),
                    child: Image.asset(
                      "assets/auth/i6.png",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.69,
            ),
            child: Container(
              height: size.height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/auth/b2.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  right: size.width * 0.08,
                  top: size.width * 0.36,
                ),
                child: Column(
                  children: [
                    Text(
                      "\u{2022} Witness the incredible cultural performances\n   of north east.",
                      textScaleFactor: 1.0,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.70,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomPageRoute(
                              child: const AboutScreen(),
                              direction: AxisDirection.left,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFFFEFAE0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              18,
                            ),
                          ),
                        ),
                        child: Text(
                          "NEXT   >",
                          textScaleFactor: 1.0,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
