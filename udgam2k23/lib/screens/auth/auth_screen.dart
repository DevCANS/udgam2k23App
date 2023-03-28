import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/general.dart';
import 'package:udgam2k23/methods/auth_methods.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthMethods _authMethods = AuthMethods();

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
                      height: size.height * 0.03,
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
                        onPressed: () async {
                          bool res =
                              await _authMethods.signInWithGoogle(context);
                          if (res) {
                            await Future.delayed(
                              const Duration(
                                seconds: 2,
                              ),
                            );
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).push(
                              CustomPageRoute(
                                child: const General(),
                                direction: AxisDirection.left,
                              ),
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.black54,
                            ),
                            Text(
                              "continue with google",
                              textScaleFactor: 1.0,
                              style: GoogleFonts.lexendDeca(
                                fontSize: 14,
                                color: Colors.black45,
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
