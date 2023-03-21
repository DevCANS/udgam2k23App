import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class TechnicalTeam extends StatefulWidget {
  const TechnicalTeam({super.key});

  @override
  State<TechnicalTeam> createState() => _TechnicalTeamState();
}

class _TechnicalTeamState extends State<TechnicalTeam> {
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
                        "Technical Team",
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
                imagePath: "assets/teams/TechnicalTeam/H.jpg",
                name: "Hansraj Singh Rawat ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919414705810"),
                onPressed2: () =>
                    method.launch("mailto:b210080@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/TechnicalTeam/K.jpg",
                name: "Koushik Roy",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918116974803"),
                onPressed2: () =>
                    method.launch("mailto:b210051@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/TechnicalTeam/A.jpg",
                name: "Adarsh Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918112460230"),
                onPressed2: () =>
                    method.launch("mailto:adarshrawat8112460230@gmail.com"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/TechnicalTeam/An.jpg",
                name: "Anirudh Ghildiyal",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918004390973"),
                onPressed2: () =>
                    method.launch("mailto:b200094@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
