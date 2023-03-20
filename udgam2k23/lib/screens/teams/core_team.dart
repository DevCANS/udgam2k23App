import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class CoreTeam extends StatefulWidget {
  const CoreTeam({super.key});

  @override
  State<CoreTeam> createState() => _CoreTeamState();
}

class _CoreTeamState extends State<CoreTeam> {
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
                        " core team",
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
              TeamCard(
                imagePath: "assets/teams/CoreTeam/P.jpg",
                name: "Pankaj Joshi",
                designation: "President",
                onPressed1: () => method.launch("tel:+918755396485"),
                onPressed2: () => method.launch(
                  "mailto:b190138@nitsikkim.ac.in",
                ),
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/VP.jpg",
                name: "Choden Tamang",
                designation: "Vice President",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/TSR.jpg",
                name: "Aman Prasad",
                designation: "Treasurer",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/SS.jpg",
                name: "Aman Saurav",
                designation: "Secretary",
                onPressed1: () => method.launch("tel:+917384128688"),
                onPressed2: () => method.launch(
                  "mailto:b200054@nitsikkim.ac.in",
                ),
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/GS.jpg",
                name: "Visakha Kumari",
                designation: "Geneal Secretary",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/JS.jpg",
                name: "Sidarth Prasad",
                designation: "Joint Secretary",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
