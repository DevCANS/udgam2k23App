import 'package:flutter/material.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/about/widgets/team_list.dart';
import 'package:udgam2k23/screens/teams/advisory.dart';
import 'package:udgam2k23/screens/teams/app.dart';
import 'package:udgam2k23/screens/teams/content.dart';
import 'package:udgam2k23/screens/teams/conveyance.dart';
import 'package:udgam2k23/screens/teams/creativity.dart';
import 'package:udgam2k23/screens/teams/cultural.dart';
import 'package:udgam2k23/screens/teams/event.dart';
import 'package:udgam2k23/screens/teams/financial.dart';
import 'package:udgam2k23/screens/teams/guest.dart';
import 'package:udgam2k23/screens/teams/hospitality.dart';
import 'package:udgam2k23/screens/teams/infrastructure.dart';
import 'package:udgam2k23/screens/teams/marketing.dart';
import 'package:udgam2k23/screens/teams/merchandise.dart';
import 'package:udgam2k23/screens/teams/photography.dart';
import 'package:udgam2k23/screens/teams/publicity.dart';
import 'package:udgam2k23/screens/teams/sponsorship.dart';
import 'package:udgam2k23/screens/teams/technical.dart';
import 'package:udgam2k23/screens/teams/web.dart';
import 'package:udgam2k23/widgets/custom_page_route.dart';
//teams
import 'package:udgam2k23/screens/teams/core_team.dart';

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
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const AdvisoryTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "App Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const AppTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Content Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const ContentTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Conveyance & Discipline Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const CADTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Creativity Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const CreativityTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Cultural Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const CulturalTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Event Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const EventTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Financial Committee",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const FinancialTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Guest Receiving Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const GRTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Hospitality Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const HospitalityTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Infrastructure & Wind-Up Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const InfrastructureTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Marketing Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const MarketingTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Merchandise Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const MerchandiseTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Photography Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const PhotographyTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Publicity Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const PublicityTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Sponsorship Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const SponsorshipTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Technical Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const TechnicalTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              TeamList(
                teamname: "Web Team",
                onPressed: () => Navigator.of(context).push(
                  CustomPageRoute(
                    child: const WebTeam(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
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
