import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';

class TeamCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String designation;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  const TeamCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.designation,
    required this.onPressed1,
    required this.onPressed2,
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
              height: size.height * 0.19,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: radialGrad,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.04,
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
                            foregroundImage: AssetImage(imagePath),
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
                              name,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.006,
                            ),
                            Text(
                              designation,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                // fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.31,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: onPressed1,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: onPressed2,
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
    );
  }
}
