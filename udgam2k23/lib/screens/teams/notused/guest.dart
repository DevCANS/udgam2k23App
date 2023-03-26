import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class GRTeam extends StatefulWidget {
  const GRTeam({super.key});

  @override
  State<GRTeam> createState() => GRTeamState();
}

class GRTeamState extends State<GRTeam> {
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
                        "Guest Receiving Team",
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
                imagePath: "assets/teams/GuestTeam/A.jpg",
                name: "Anamika Kumari ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919572539383"),
                onPressed2: () =>
                    method.launch("mailto:b210070@nitsikkim.ac.in "),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/GuestTeam/R.jpg",
                name: "Ritika Kumari",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916206281151"),
                onPressed2: () =>
                    method.launch("mailto:B210086@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
