import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Widget TeamCard(List<dynamic> team, BuildContext context, Size size) =>
    ListView.builder(
      itemCount: team.length,
      itemBuilder: (context, index) {
        final repo = team[index];
        return Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.005,
              ),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  child: Container(
                    height: size.height * 0.20,
                    width: size.width * 0.9,
                    decoration: const BoxDecoration(
                      gradient: radialGrad,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.035,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.01,
                              ),
                              child: CircleAvatar(
                                radius: 46,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 43,
                                  foregroundImage:
                                      NetworkImage(team[index]['profileImage']),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.04,
                                top: size.height * 0.03,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    team[index]['name'],
                                    textScaleFactor: 1.0,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.006,
                                  ),
                                  Text(
                                    team[index]['designation'],
                                    textScaleFactor: 1.0,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      // fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.26,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () => launch(
                                              "tel:+91${team[index]['phone']}"),
                                          icon: const FaIcon(
                                            FontAwesomeIcons.phone,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () => launch(
                                              "mailto:${team[index]['mail']}"),
                                          icon: const Icon(
                                            Icons.mail,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
