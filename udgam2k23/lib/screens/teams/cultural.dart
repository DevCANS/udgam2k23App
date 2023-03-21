import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class CulturalTeam extends StatefulWidget {
  const CulturalTeam({super.key});

  @override
  State<CulturalTeam> createState() => _CulturalTeamState();
}

class _CulturalTeamState extends State<CulturalTeam> {
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
                        "Cultural Team",
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
                imagePath: "assets/teams/CulturalTeam/S.jpg",
                name: "Saumya Ranjan",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917667194470"),
                onPressed2: () =>
                    method.launch("mailto:b210027@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/CulturalTeam/R.jpg",
                name: "Riyansh",
                designation: "Member",
                onPressed1: () => method.launch("tel:+910000000000"),
                onPressed2: () =>
                    method.launch("mailto:b200071@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/CulturalTeam/N.jpg",
                name: "Nikila Bhutia ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917699873994"),
                onPressed2: () =>
                    method.launch("mailto:b200001@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/CulturalTeam/P.jpg",
                name: "Priya Jain ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919931972929"),
                onPressed2: () =>
                    method.launch("mailto:b200156@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/CulturalTeam/Sar.jpg",
                name: "Sarath Namburi ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919603583249"),
                onPressed2: () =>
                    method.launch("mailto:b200086@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
