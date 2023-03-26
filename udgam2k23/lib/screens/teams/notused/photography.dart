import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class PhotographyTeam extends StatefulWidget {
  const PhotographyTeam({super.key});

  @override
  State<PhotographyTeam> createState() => PhotographyTeamState();
}

class PhotographyTeamState extends State<PhotographyTeam> {
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
                        "Photography Team",
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
                imagePath: "assets/teams/PhTeam/A.jpeg",
                name: "B. Abhisheknayak",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919700419650"),
                onPressed2: () =>
                    method.launch("mailto:B200128@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/PhTeam/S.jpg",
                name: "N. Sai Santhosh",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918374627611"),
                onPressed2: () =>
                    method.launch("mailto:b210016@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/PhTeam/Sh.jpg",
                name: "Shorabh Singh ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917404577793"),
                onPressed2: () =>
                    method.launch("mailto:b210091@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
