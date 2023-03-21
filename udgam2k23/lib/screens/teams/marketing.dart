import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class MarketingTeam extends StatefulWidget {
  const MarketingTeam({super.key});

  @override
  State<MarketingTeam> createState() => _MarketingTeamState();
}

class _MarketingTeamState extends State<MarketingTeam> {
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
                        "Marketing Team",
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
                imagePath: "assets/teams/MarketingTeam/R.jpg",
                name: "Riya Bhagat ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919883559958"),
                onPressed2: () =>
                    method.launch("mailto:b210115@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/MarketingTeam/H.jpg",
                name: "Himanshu Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918804263496"),
                onPressed2: () =>
                    method.launch("mailto:b200136@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/MarketingTeam/A.jpg",
                name: "Abhishek Jaluthriya ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916367342459"),
                onPressed2: () =>
                    method.launch("mailto:b210124@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
