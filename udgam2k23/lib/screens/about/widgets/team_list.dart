import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';

class  TeamList extends StatelessWidget {
  final String teamname;

  const TeamList({
    super.key,
    required this.teamname,

  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      child:InkWell(
        onTap: () {},
        child: Container(
          height: size.height * 0.065,
          width: size.width * 0.92,
          decoration: BoxDecoration(
            color: const Color(0xffe6f1f4),
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.08,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  teamname,
                  style: GoogleFonts.lexend(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
