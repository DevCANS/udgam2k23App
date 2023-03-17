import 'package:flutter/material.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/about/widgets/team_list.dart';

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
            top: size.height * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const TeamList(
                teamname:"Conveyance & Discipline Team",
              ),
              const TeamList(
                teamname:"Creativity Team",
              ),
              const TeamList(
                teamname:"Event Team",
              ),
              const TeamList(
                teamname:"Financial Team",
              ),
              const TeamList(
                teamname:"Guest Receiving Team",
              ),
              const TeamList(
                teamname:"Hospitality Team",
              ),
              const TeamList(
                teamname:"Infrastructure & Wind-Up Team",
              ),
              const TeamList(
                teamname:"Marketing Team",
              ),
              const TeamList(
                teamname:"Merchandise Team",
              ),
              const TeamList(
                teamname:"Photography Team",
              ),
              const TeamList(
                teamname:"Publicity Team",
              ),
              const TeamList(
                teamname:"Sponsorship Team",
              ),
              const TeamList(
                teamname:"Technical Team",
              ),
              const TeamList(
                teamname:"Web Team",
              ),
              const TeamList(
                teamname:"App Team",
              ),
              SizedBox(
                height: size.height*0.02,
              )

            ].map((e) => Padding(
              child: e,
              padding: EdgeInsets.symmetric(vertical: size.height*0.005),
            ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
