import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class MerchandiseTeam extends StatefulWidget {
  const MerchandiseTeam({super.key});

  @override
  State<MerchandiseTeam> createState() => _MerchandiseTeamState();
}

class _MerchandiseTeamState extends State<MerchandiseTeam> {
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
                        " Merchandise Team",
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
                imagePath: "assets/teams/MerchTeam/T.jpg",
                name: "Tanmay Tejas ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919608352540"),
                onPressed2: () =>
                    method.launch("mailto:b200140@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/MerchTeam/V.jpg",
                name: "Vishnu Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918445429741"),
                onPressed2: () =>
                    method.launch("mailto:B200155@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
