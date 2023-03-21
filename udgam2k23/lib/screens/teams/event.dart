import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class EventTeam extends StatefulWidget {
  const EventTeam({super.key});

  @override
  State<EventTeam> createState() => _EventTeamState();
}

class _EventTeamState extends State<EventTeam> {
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
                        "Event Team",
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
                imagePath: "assets/teams/EventTeam/A.jpg",
                name: "Anvitha Dhanisetty",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919392484584"),
                onPressed2: () =>
                    method.launch("mailto:b200065@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/EventTeam/B.jpg",
                name: "Bhanuja Karumuru",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919014127370"),
                onPressed2: () =>
                    method.launch("mailto:b200087@nitsikkim.ac.in "),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/EventTeam/N.jpg",
                name: "Amrisha Nigam",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918570066049"),
                onPressed2: () =>
                    method.launch("mailto:b200046@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/EventTeam/B.jpg",
                name: "Swetha Patel ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919490873267"),
                onPressed2: () =>
                    method.launch("mailto:b200158@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
