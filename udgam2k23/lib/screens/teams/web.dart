import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class WebTeam extends StatefulWidget {
  const WebTeam({super.key});

  @override
  State<WebTeam> createState() => _WebTeamState();
}

class _WebTeamState extends State<WebTeam> {
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
                        "Web Devlopment Team",
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
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/WebTeam/Vishal.jpg",
                name: "Vishal Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919608851340"),
                onPressed2: () =>
                    method.launch("mailto:vishal.tinu1999@gmail.com"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/WebTeam/Jigmee.jpg",
                name: "Jigmee W. Sherpa",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917908546144"),
                onPressed2: () =>
                    method.launch("mailto:b200044@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/WebTeam/Joshua.jpg",
                name: "Joshua Biswakarma",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917427910748"),
                onPressed2: () =>
                    method.launch("mailto:b210014@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/WebTeam/Anmol.jpg",
                name: "Anmol Kumar Sharma",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919771729061"),
                onPressed2: () =>
                    method.launch("mailto:b210007@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
