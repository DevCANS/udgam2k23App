import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
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
                  color: const Color(
                    0xff00386d,
                  ),
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
                        "Developers",
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
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
                  DevCard(imagePath:"assets/teams/AppTeam/PranshuJaiswal.jpg",
                      name: "Pranshu Jaiswal",
                      designation: "Member",
                      tagLine: "PLUS ULTRA!!",
                      github:()=> method.launch("https://github.com/jpranshu"),
                      instagram:()=> method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin:()=>method.launch("https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone:()=> method.launch("tel:+918250574639"),
                      mail:()=> method.launch("mailto:b210021@nitsikkim.ac.in")),
                  DevCard(imagePath:"assets/teams/AppTeam/PranshuJaiswal.jpg",
                      name: "Pranshu Jaiswal",
                      designation: "Member",
                      tagLine: "PLUS ULTRA!!",
                      github:()=> method.launch("https://github.com/jpranshu"),
                      instagram:()=> method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin:()=>method.launch("https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone:()=> method.launch("tel:+918250574639"),
                      mail:()=> method.launch("mailto:b210021@nitsikkim.ac.in")),
                  DevCard(imagePath:"assets/teams/AppTeam/PranshuJaiswal.jpg",
                      name: "Pranshu Jaiswal",
                      designation: "Member",
                      tagLine: "PLUS ULTRA!!",
                      github:()=> method.launch("https://github.com/jpranshu"),
                      instagram:()=> method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin:()=>method.launch("https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone:()=> method.launch("tel:+918250574639"),
                      mail:()=> method.launch("mailto:b210021@nitsikkim.ac.in")),
                  DevCard(imagePath:"assets/teams/AppTeam/PranshuJaiswal.jpg",
                      name: "Pranshu Jaiswal",
                      designation: "Member",
                      tagLine: "PLUS ULTRA!!",
                      github:()=> method.launch("https://github.com/jpranshu"),
                      instagram:()=> method.launch("https://www.instagram.com/pranshu._/"),
                      linkedin:()=>method.launch("https://www.linkedin.com/in/pranshu-jaiswal-14b3021b8/"),
                      phone:()=> method.launch("tel:+918250574639"),
                      mail:()=> method.launch("mailto:b210021@nitsikkim.ac.in")),
                ].map((e) => Padding(
                  child: e,
                  padding:
                  EdgeInsets.symmetric(vertical: size.height * 0.005),
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
