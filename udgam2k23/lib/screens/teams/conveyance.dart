import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class CADTeam extends StatefulWidget {
  const CADTeam({super.key});

  @override
  State<CADTeam> createState() => _CADTeamState();
}

class _CADTeamState extends State<CADTeam> {
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
                        "Conveyance and Discipline Team",
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
                imagePath: "assets/teams/DisciplineTeam/AniketGupta.jpg",
                name: "Aniket Gupta",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916296014362"),
                onPressed2: () =>
                    method.launch("mailto:b200107@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/DisciplineTeam/P.jpg",
                name: "Purnasish Pattnayak",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918145712682"),
                onPressed2: () =>
                    method.launch("mailto:b210083@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/DisciplineTeam/M.jpg",
                name: "Mini ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919079281922"),
                onPressed2: () =>
                    method.launch("mailto:b200099@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
