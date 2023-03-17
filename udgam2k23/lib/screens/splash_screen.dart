import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/general.dart';
import 'package:udgam2k23/screens/auth/screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // ignore: todo
    // TODO: implement initState
    Timer(
      const Duration(
        seconds: 2,
      ),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Screen1(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              "assets/images/udgam.png",
            ),
          ),
          Text(
            "6TH EDITION",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
