import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class CoreTeam extends StatefulWidget {
  const CoreTeam({super.key});

  @override
  State<CoreTeam> createState() => _CoreTeamState();
}

class _CoreTeamState extends State<CoreTeam> {
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
                        " core team",
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
                imagePath: "assets/teams/CoreTeam/P.jpg",
                name: "Pankaj Joshi",
                designation: "President",
                onPressed1: () => method.launch("tel:+918755396485"),
                onPressed2: () =>
                    method.launch("mailto:b190138@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/VP.jpg",
                name: "Choden Tamang",
                designation: "Vice President",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/TSR.jpg",
                name: "Aman Prasad",
                designation: "Treasurer",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/SS.jpg",
                name: "Aman Saurav",
                designation: "Secretary",
                onPressed1: () => method.launch("tel:+917384128688"),
                onPressed2: () => method.launch(
                  "mailto:b200054@nitsikkim.ac.in",
                ),
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/GS.jpg",
                name: "Visakha Kumari",
                designation: "Geneal Secretary",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/JS.jpg",
                name: "Sidarth Prasad",
                designation: "Joint Secretary",
                onPressed1: () {},
                onPressed2: () {},
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/U.jpg",
                name: "Siddharth Utsav",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918637824532"),
                onPressed2: () =>
                        method.launch("mailto:b200076@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Z.jpg",
                name: "Zameer Ahmad Ansari",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919588633193"),
                onPressed2: () =>
                    method.launch("mailto:b200032@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Sampath.jpg",
                name: "Palisetti Sai Sampath",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916303824117"),
                onPressed2: () =>
                    method.launch("mailto:b210057@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Suruchi.jpg",
                name: "Suruchi Sharma",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919883052966"),
                onPressed2: () =>
                    method.launch("mailto:b200034@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/M.jpg",
                name: "Mohit Joshi",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916296995093"),
                onPressed2: () =>
                    method.launch("mailto:b210055@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Sakshi.jpg",
                name: "Sakshi Sharma",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916389235119"),
                onPressed2: () =>
                    method.launch("mailto:b210142@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Swastik.jpg",
                name: "Swastik Chakraborty ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917980375230"),
                onPressed2: () =>
                    method.launch("mailto:b210144@nitsikkim.ac.in "),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/Akhil.jpg",
                name: "Sevak Akhil Shantilal ",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919082401537"),
                onPressed2: () =>
                    method.launch("mailto:b200134@nitsikkim.ac.in "),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              TeamCard(
                imagePath: "assets/teams/CoreTeam/N.jpg",
                name: "Navjeevan Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+916202797550"),
                onPressed2: () =>
                    method.launch("mailto:b210082@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
