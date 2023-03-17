import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.55,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/auth/t4.png'),
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
              top: size.height * 0.19,
            ),
            child: Container(
              height: size.height * 0.81,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/auth/b4.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.04,
                  top: size.width * 0.60,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/auth/text.png",
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.15,
                        right: size.width * 0.07,
                      ),
                      child: ElevatedButton(
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
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.black,
                            ),
                            Text(
                              "Continue With Google",
                              style: GoogleFonts.lexendDeca(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
