import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/screens/auth/auth_screen.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.40,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/auth/t3.png'),
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
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.45,
            ),
            child: Container(
              height: size.height * 0.60,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/auth/b3.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  top: size.width * 0.8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\u{2022} Don't miss the chance to be part of a cultural extravaganza\n  that celebrates creativity, expression, and diversity. Our\n  college's cultural event is back, and it's bigger and better\n  than ever before!",
                      textScaleFactor: 1.0,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.64,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomPageRoute(
                              child: const AuthScreen(),
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
                          "Let's Go   >",
                          textScaleFactor: 1.0,
                          style: GoogleFonts.lexendDeca(
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
          Center(
            child: Image.asset(
              "assets/auth/S3.png",
            ),
          ),
        ],
      ),
    );
  }
}
