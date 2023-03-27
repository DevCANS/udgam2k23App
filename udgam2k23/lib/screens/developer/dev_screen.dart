import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/developer/widget/dev_card.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';

class DeveloperScreen extends StatefulWidget {
  const DeveloperScreen({super.key});

  @override
  State<DeveloperScreen> createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  Methods method = Methods();
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
                  color: Color(0xffe5b5cc),
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
                        " Developers",
                        textScaleFactor: 1.0,
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                children: [
                  DevCard(
                      imagePath: "assets/teams/AppTeam/Dee.jpg",
                      name: "Dhireen K. Rajak",
                      designation: "Designer & Developer",
                      tagLine: "Kaizoku-o ni ore wa naru! 🏴‍☠️",
                      github: () =>
                          method.launch("https://github.com/dee-Rajak"),
                      instagram: () =>
                          method.launch("https://www.instagram.com/dee_rajak/"),
                      linkedin: () => method
                          .launch("https://www.linkedin.com/in/dee-rajak/"),
                      phone: () => method.launch("tel:+919382038024"),
                      mail: () =>
                          method.launch("mailto:iamdeerajak@gmail.com")),
                  DevCard(
                      imagePath: "assets/teams/CoreTeam/SS.jpg",
                      name: "Aman Saurav",
                      designation: "Designer & Developer",
                      tagLine: "Noob 😁",
                      github: () =>
                          method.launch("https://github.com/oops-aman"),
                      instagram: () => method
                          .launch("https://www.instagram.com/oops_aman22/"),
                      linkedin: () => method.launch(
                          "https://www.linkedin.com/in/aman-saurav-6ab61120b/"),
                      phone: () => method.launch("tel:+917384128688"),
                      mail: () =>
                          method.launch("mailto:b200054@nitsikkim.ac.in")),
                  DevCard(
                      imagePath: "assets/teams/AppTeam/Pranshu_dev.jpg",
                      name: "Pranshu Jaiswal",
                      designation: "Developer",
                      tagLine: "PLUS ULTRA!!",
                      github: () =>
                          method.launch("https://github.com/jpranshu"),
                      instagram: () =>
                          method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin: () => method.launch(
                          "https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone: () => method.launch("tel:+918250574639"),
                      mail: () =>
                          method.launch("mailto:b210021@nitsikkim.ac.in")),
                  DevCard(
                      imagePath: "",
                      name: "Saurav Kumar",
                      designation: "Developer",
                      tagLine: "Coding is my hobbie !",
                      github: () =>
                          method.launch("https://github.com/jpranshu"),
                      instagram: () =>
                          method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin: () => method.launch(
                          "https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone: () => method.launch("tel:+918250574639"),
                      mail: () =>
                          method.launch("mailto:b210021@nitsikkim.ac.in")),
                ]
                    .map((e) => Padding(
                          child: e,
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.005),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
