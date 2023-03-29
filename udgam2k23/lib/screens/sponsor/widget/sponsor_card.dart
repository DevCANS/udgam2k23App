import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Widget SponsorCard(List<dynamic> sponsor, BuildContext context, Size size) =>
    ListView.builder(
      itemCount: sponsor.length,
      itemBuilder: (context, index) {
        final repo = sponsor[index];
        return Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.015,
              ),
              InkWell(
                onTap: () => launch(repo['sponsor_link']),
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    child: Container(
                      margin: EdgeInsets.zero,
                      height: size.height * 0.25,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: radialGrad2,
                        // color: Color.fromARGB(255, 83, 96, 118)
                      ),
                      child: Center(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffb9c7ff),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffd78dd1),
                                      width: 2,
                                    ),
                                  ),
                                ),
                                width: double.infinity,
                                child: Center(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    sponsor[index]['sponsor_name'],
                                    textScaleFactor: 1,
                                    style: GoogleFonts.lexendDeca(
                                      fontSize: size.height * 0.03,
                                      // fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ))),
                            SizedBox(
                              height: size.height * 0.014,
                            ),
                            Container(
                              // color: Colors.amber,
                              height: size.height * 0.12,
                              width: size.width * 0.8,
                              child: Image.network(
                                sponsor[index]['sponsor_image'],
                                // height: size.height * 0.09,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.015,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.005,
                                  horizontal: size.width * 0.05),
                              decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                sponsor[index]['sponsor_type'],
                                textScaleFactor: 1,
                                style: GoogleFonts.sofia(
                                  fontSize: size.height * 0.02,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
