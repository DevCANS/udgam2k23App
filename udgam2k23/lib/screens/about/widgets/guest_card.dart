import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xen_popup_card/xen_card.dart';

Widget GuestData(List<dynamic> team, BuildContext context, Size size) =>
    ListView.builder(
      itemCount: team.length,
      itemBuilder: (context, index) {
        final repo = team[index];
        team[index]["about"] = team[index]["about"].replaceAll("\\n", "\n");
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
                child: InkWell(
                  onTap: () => showDialog(
                    context: context,
                    builder: (builder) => XenPopupCard(
                      cardBgColor: Color(0xFFE6F5F3),
                      body: ListView(
                        children: [
                          SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.002,
                                right: size.width * 0.002,
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                      child: SizedBox(
                                        height: size.height * 0.35,
                                        width: double.infinity,
                                        child: Image.network(
                                            team[index]['image_link']),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        team[index]['name'],
                                        textScaleFactor: 1.0,
                                        style: GoogleFonts.berkshireSwash(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: size.height * 0.03,
                                        ),
                                      ),
                                      Divider(
                                        color: dividerColor,
                                        thickness: size.height * 0.01,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        team[index]['performance'],
                                        textScaleFactor: 1.0,
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: size.height * 0.025,
                                        ),
                                      ),
                                    ],
                                  ),

                                  //time & venue
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    height: size.height * 0.045,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.02,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Time:  ${team[index]['time']}",
                                          textScaleFactor: 1.0,
                                          style: GoogleFonts.benchNine(
                                            fontSize: size.height * 0.026,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    height: size.height * 0.045,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.02,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Venue:  ${team[index]['venue']}",
                                          textScaleFactor: 1.0,
                                          style: GoogleFonts.benchNine(
                                            fontSize: size.height * 0.026,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Text(
                                    team[index]["about"],
                                    textScaleFactor: 1.0,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: size.height * 0.014,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () =>
                                          launch(team[index]['web_link']),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF6CFFB9),
                                      ),
                                      child: Text(
                                        "Learn more",
                                        textScaleFactor: 1.0,
                                        style: GoogleFonts.alumniSans(
                                          fontSize: size.height * 0.028,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    child: Container(
                      height: size.height * 0.18,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: backgroundColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                ),
                                child: CircleAvatar(
                                  radius: size.width * 0.15,
                                  backgroundColor: Color(0xFF5EBDB4),
                                  child: CircleAvatar(
                                    radius: size.width * 0.145,
                                    foregroundImage:
                                        NetworkImage(team[index]['image_link']),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.04,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      team[index]['name'],
                                      textScaleFactor: 1.0,
                                      style: GoogleFonts.raleway(
                                        fontSize: size.height * 0.026,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.006,
                                    ),
                                    Text(
                                      team[index]['performance'],
                                      textScaleFactor: 1.0,
                                      style: GoogleFonts.poppins(
                                        fontSize: size.height * 0.02,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                        // fontWeight: FontWeight.w500,
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
              ),
            ],
          ),
        );
      },
    );
