import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class AdvisoryTeam extends StatefulWidget {
  const AdvisoryTeam({super.key});

  @override
  State<AdvisoryTeam> createState() => _AdvisoryTeamState();
}

class _AdvisoryTeamState extends State<AdvisoryTeam> {
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
                        " Advisory Team",
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
                imagePath: "assets/teams/AdvisoryTeam/ShivamJaiswal.jpg",
                name: "Shivam Jaiswal",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917477631174"),
                onPressed2: () =>
                    method.launch("mailto:b190034@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/RohanSahu.jpg",
                name: "Rohan Kumar Sahu",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919735058325"),
                onPressed2: () =>
                    method.launch("mailto:b190143@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/RishabhTenguria.jpg",
                name: "Rishabh Tenguria",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919520313045"),
                onPressed2: () =>
                    method.launch("mailto:b190062@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/SauravKumar.jpg",
                name: "Saurav Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917761907120"),
                onPressed2: () =>
                    method.launch("mailto:b190065@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/DhirajSharma.jpg",
                name: "Dhiraj Sharma",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919641821629"),
                onPressed2: () =>
                    method.launch("mailto:b190102@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/ShivamJaiswal.jpg",
                name: "Abhishek Thakur",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917761907120"),
                onPressed2: () =>
                    method.launch("mailto:b190001@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/ShristiPrasad.jpg",
                name: "Srishti Prasad",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916294219783"),
                onPressed2: () =>
                    method.launch("mailto:b190068@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TeamCard(
                imagePath: "assets/teams/AdvisoryTeam/SamsherAli.jpg",
                name: "SamsherAli",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919749581631"),
                onPressed2: () =>
                    method.launch("mailto:b190145@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
