import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';

class FeaturedCard1 extends StatelessWidget {
  final String text1;
  final String text2;
  final String imagePath;
  const FeaturedCard1({
    super.key,
    required this.text1,
    required this.text2,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: linearGrad1,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            size.width * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    width: size.width * 0.5,
                    child: Text(
                      text2,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: size.height * 0.14,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
