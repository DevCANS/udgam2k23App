import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class InfrastructureTeam extends StatefulWidget {
  const InfrastructureTeam({super.key});

  @override
  State<InfrastructureTeam> createState() => _InfrastructureTeamState();
}

class _InfrastructureTeamState extends State<InfrastructureTeam> {
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
                        " Infrastructure Team",
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
                imagePath: "assets/teams/InfraTeam/S.jpg",
                name: "Saksham Kumar ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916207931927"),
                onPressed2: () =>
                    method.launch("mailto:b210088@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/InfraTeam/A.jpg",
                name: "Amit Negi",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919258052799"),
                onPressed2: () =>
                    method.launch("mailto:B200019@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/InfraTeam/Arpit.jpg",
                name: "Arpit Paul ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919647097750"),
                onPressed2: () =>
                    method.launch("mailto:B200118@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
