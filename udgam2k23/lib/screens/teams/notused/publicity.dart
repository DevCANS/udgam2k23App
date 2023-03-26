import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class PublicityTeam extends StatefulWidget {
  const PublicityTeam({super.key});

  @override
  State<PublicityTeam> createState() => _PublicityTeamState();
}

class _PublicityTeamState extends State<PublicityTeam> {
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
                        "Publicity Team",
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
                imagePath: "assets/teams/PuTeam/B.jpg",
                name: "Balwant Singh",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919548552262"),
                onPressed2: () =>
                    method.launch("mailto:b210044@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/PuTeam/V.jpg",
                name: "Vinayak Jadhav ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919371613483"),
                onPressed2: () =>
                    method.launch("mailto:b210013@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/PuTeam/P.jpg",
                name: "Pushkar Srivastav",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919044498381"),
                onPressed2: () =>
                    method.launch("mailto:b210112@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/PuTeam/Raj.jpg",
                name: "Raj Singh",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919874163385"),
                onPressed2: () =>
                    method.launch("mailto:b210114@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
