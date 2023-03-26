import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class HospitalityTeam extends StatefulWidget {
  const HospitalityTeam({super.key});

  @override
  State<HospitalityTeam> createState() => _HospitalityTeamState();
}

class _HospitalityTeamState extends State<HospitalityTeam> {
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
                        "Hopitality Team",
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
                imagePath: "assets/teams/HospitalityTeam/A.jpeg",
                name: "Ashish Garg",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917734814965"),
                onPressed2: () =>
                    method.launch("mailto:b200056@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/HospitalityTeam/Sakshi.jpg",
                name: "Sakshi",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917220881626"),
                onPressed2: () =>
                    method.launch("mailto:b200148@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/HospitalityTeam/Sandhya.jpg",
                name: "Sandhya Kumari",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918674888317"),
                onPressed2: () =>
                    method.launch("mailto:B210118@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/HospitalityTeam/Sarika.jpg",
                name: "Sarika Gautam",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917541006796"),
                onPressed2: () =>
                    method.launch("mailto:b210061@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
