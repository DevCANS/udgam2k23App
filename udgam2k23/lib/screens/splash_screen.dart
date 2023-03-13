import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udgam2k23/general.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          builder: (context) => const General(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/udgam.png",
        ),
      ),
    );
  }
}
