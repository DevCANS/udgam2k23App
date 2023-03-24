import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';

class DevCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String designation;
  final String tagLine;
  final VoidCallback github;
  final VoidCallback instagram;
  final VoidCallback linkedin;
  final VoidCallback phone;
  final VoidCallback mail;
  const DevCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.designation,
    required this.tagLine,
    required this.github,
    required this.instagram,
    required this.linkedin,
    required this.phone,
    required this.mail,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              12,
            ),
            child: Container(
              height: size.height * 0.20,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: linearGrad3,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      CircleAvatar(
                        radius: size.height * 0.06,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: size.height * 0.055,
                          foregroundImage: AssetImage(imagePath),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.04,
                          top: size.height * 0.008,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              name,
                              style: GoogleFonts.silkscreen(
                                fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                color: const Color(0xFF161A1D),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              designation,
                              style: GoogleFonts.vt323(
                                fontSize: 18,
                                color: Colors.black45,
                                fontStyle: FontStyle.italic,
                                // fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              "`$tagLine`",
                              style: GoogleFonts.vt323(
                                fontSize: 17,
                                color: Colors.black87,
                                //fontStyle: FontStyle.italic,
                                // fontWeight: FontWeight.w100,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.001,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: size.width * 0.042,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: github,
                                        icon: FaIcon(
                                          FontAwesomeIcons.github,
                                          color: Colors.black87,
                                          size: size.width * 0.05,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: size.width * 0.042,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: linkedin,
                                        icon: FaIcon(
                                          FontAwesomeIcons.linkedin,
                                          color: Colors.black87,
                                          size: size.width * 0.05,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: size.width * 0.042,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: instagram,
                                        icon: FaIcon(
                                          FontAwesomeIcons.instagram,
                                          color: Colors.black87,
                                          size: size.width * 0.052,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: size.width * 0.042,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: phone,
                                        icon: FaIcon(
                                          FontAwesomeIcons.phone,
                                          color: Colors.black87,
                                          size: size.width * 0.045,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: size.width * 0.042,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: mail,
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidEnvelope,
                                          color: Colors.black87,
                                          size: size.width * 0.045,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                                    .map((e) => Padding(
                                          child: e,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.014),
                                        ))
                                    .toList(),
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
    );
  }
}
