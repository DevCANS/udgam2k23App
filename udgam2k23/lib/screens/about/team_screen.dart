import 'package:flutter/material.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/about/widgets/team_list.dart';
import 'package:udgam2k23/screens/teams/core_team.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
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
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: backgroundColor,
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
                        "gallery",
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamList(
                teamname: "Core Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const CoreTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Advisory Committee",
                onPressed: () {},
              ),
              // TeamList(
              //   teamname: "Conveyance & Discipline Team",
              // ),
              // const TeamList(
              //   teamname: "Creativity Team",
              // ),
              // const TeamList(
              //   teamname: "Event Team",
              // ),
              // const TeamList(
              //   teamname: "Financial Team",
              // ),
              // const TeamList(
              //   teamname: "Guest Receiving Team",
              // ),
              // const TeamList(
              //   teamname: "Hospitality Team",
              // ),
              // const TeamList(
              //   teamname: "Infrastructure & Wind-Up Team",
              // ),
              // const TeamList(
              //   teamname: "Marketing Team",
              // ),
              // const TeamList(
              //   teamname: "Merchandise Team",
              // ),
              // const TeamList(
              //   teamname: "Photography Team",
              // ),
              // const TeamList(
              //   teamname: "Publicity Team",
              // ),
              // const TeamList(
              //   teamname: "Sponsorship Team",
              // ),
              // const TeamList(
              //   teamname: "Technical Team",
              // ),
              // const TeamList(
              //   teamname: "Web Team",
              // ),
              // const TeamList(
              //   teamname: "App Team",
              // ),
              SizedBox(
                height: size.height * 0.02,
              )
            ]
                .map((e) => Padding(
                      child: e,
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.005),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
