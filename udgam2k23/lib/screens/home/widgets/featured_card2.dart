import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';

class FeaturedCard2 extends StatelessWidget {
  final String text1;
  final String text2;
  final String imagePath;
  const FeaturedCard2({
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
        decoration: const BoxDecoration(
          gradient: linearGrad2,
        ),
        child: Padding(
          padding: EdgeInsets.all(
            size.width * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.14,
                child: Image.asset(
                  imagePath,
                ),
              ),
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
                  Text(
                    text2,
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
