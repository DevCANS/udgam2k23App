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
              height: size.height * 0.22,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: linearGrad2,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 48,
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
                              height: size.height * 0.02,
                            ),
                            Text(
                              name,
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF161A1D),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.002,
                            ),
                            Text(
                              designation,
                              style: GoogleFonts.gugi(
                                fontSize: 16,
                                color: Colors.black87,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.002,
                            ),
                            Text(
                              tagLine,
                              style: GoogleFonts.gugi(
                                fontSize: 16,
                                color: Colors.black,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.01,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child:IconButton(
                                        onPressed: github,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.github,
                                          color: Colors.black,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child:IconButton(
                                      onPressed: linkedin,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.linkedin,
                                          color: Colors.black,
                                          size: 22,
                                        ),
                                    ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child:IconButton(
                                        onPressed: instagram,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.instagram,
                                          color: Colors.black,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child:IconButton(
                                        onPressed: phone,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.phone,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child:IconButton(
                                        onPressed: mail,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.solidEnvelope,
                                          color: Colors.black,
                                          size: 21,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].map((e) => Padding(
                                  child: e,
                                  padding:
                                  EdgeInsets.symmetric(horizontal: size.width * 0.01),
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
