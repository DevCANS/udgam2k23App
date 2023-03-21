import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class SponsorshipTeam extends StatefulWidget {
  const SponsorshipTeam({super.key});

  @override
  State<SponsorshipTeam> createState() => _SponsorshipTeamState();
}

class _SponsorshipTeamState extends State<SponsorshipTeam> {
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
                        "Sponsorship Team",
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
                imagePath: "assets/teams/SponsorTeam/A.jpg",
                name: "Akriti Jha ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918016664783"),
                onPressed2: () =>
                    method.launch("mailto:B210068@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/SponsorTeam/An.jpg",
                name: "Aanchal Gupta",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917719315013"),
                onPressed2: () =>
                    method.launch("mailto:b200047@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/SponsorTeam/R.jpg",
                name: "Rohit Mohan Roy ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917584855761"),
                onPressed2: () =>
                    method.launch("mailto:b200033@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/SponsorTeam/T.jpg",
                name: "Tathagat Bhanj Dev ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917430918783"),
                onPressed2: () =>
                    method.launch("mailto:b200072@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
