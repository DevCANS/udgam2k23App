import 'package:udgam2k23/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.04,
          right: size.width * 0.04,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: size.height * 0.28,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: linGrad,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "Event Name",
                          style: GoogleFonts.bungeeInline(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: size.height * 0.1,
                                width: size.width * 0.5,
                                color: const Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.03,
                                    top: size.width * 0.02,
                                    bottom: size.width * 0.02,
                                    right: size.width * 0.03,
                                  ),
                                  child: Text(
                                    "Few lines about the event.",
                                    style: GoogleFonts.benchNine(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Time: ",
                                  style: GoogleFonts.benchNine(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Venue: ",
                                  style: GoogleFonts.benchNine(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF6CFFB9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              child: Text(
                                "Register",
                                style: GoogleFonts.alumniSans(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
