import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "gallery",
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  child: SizedBox(
                    height: size.height * 0.35,
                    width: size.width * 0.65,
                    child: Image.asset(
                      "assets/images/udgam_p.png",
                      fit: BoxFit.fill,
                    ),
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
                    "About Udgam",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "NIT Sikkim has been pioneering to bring about a new way\nof learning in the campus. NIT SIKKM has continuously\nbridged academics to home their skills and talents to\nevolve.",
                maxLines: 4,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "UDGAM is the magnificent annual cultural fest of NIT\nSIKKIM, a heart-throb fest of Kanchenjunga, a complete\nfeast for its participants and a matter of ecstasy for all its\nstudents. Offering a vivid blend of music, art, dance,\ntalent and enthralling events of the fest all brimming with\ncraziness, weirdness, wackiness and never ending\nentertainment. A room for roar, laugh and giggle.",
                maxLines: 7,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
