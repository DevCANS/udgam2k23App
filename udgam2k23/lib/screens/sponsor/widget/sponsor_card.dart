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
              Card(
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  child: Container(
                    margin: EdgeInsets.zero,
                    height: size.height * 0.21,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: linearGrad2,
                      // color: Color.fromARGB(255, 83, 96, 118)
                    ),
                    child: Center(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              color: Colors.black54,
                              width: double.infinity,
                              child : Center(child : Text(
                                sponsor[index]['sponsor_name'],
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ))),
                          SizedBox(
                            height: size.height * 0.014,
                          ),

                          Image.network(
                            sponsor[index]['sponsor_image'],
                            height: size.height * 0.09,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),

                          Text(
                            sponsor[index]['sponsor_type'],
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 107, 102, 102),
                            ),
                          ),
                        ],
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
