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
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "udgam 2k23",
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
                  right: size.width * 0.08,
                  top: size.width * 0.84,
                ),
                child: Column(
                  children: [
                    Text(
                      "\u{2022} Witness the incredible cultural performances\n   of north east.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
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
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.15,
              top: size.height * 0.25,
            ),
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
        ],
      ),
    );
  }
}
