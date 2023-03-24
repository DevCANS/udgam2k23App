import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';

import 'package:udgam2k23/constants.dart';
import 'package:url_launcher/url_launcher.dart';

const linGrad = LinearGradient(
  colors: [Color(0xffaaf2ff), Color(0xffe990fc)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const radialGrad = RadialGradient(
  colors: [Color(0xff2095f3), Color(0xff004d94)],
  center: Alignment.center,
  radius: 1.2,
);

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  late Future<List<dynamic>> futureEvents;

  Future<List<dynamic>> fetchRepos(BuildContext context) async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/saurav-inde/website/main/temp.json'));
    if (response.statusCode == 200) {
      final body = json.decode(response.body)['events'];
      return body;
    } else {
      throw Exception("Failed to load Data");
    }
  }

  @override
  void initState() {
    super.initState();
    futureEvents = fetchRepos(context);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundColor,
              centerTitle: true,
              bottom: TabBar(
                indicator: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color.fromARGB(194, 249, 130, 255),
                      Color.fromARGB(255, 211, 204, 255),
                    ],
                    center: Alignment.center,
                    radius: 0.8,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  // backgroundBlendMode: BlendMode.overlay,
                  color: Colors.white,
                ),
                indicatorColor: Colors.black87,
                tabs: [
                  Tab(
                    child: Column(
                      children: const [
                        Text(
                          'Day',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.looks_one_rounded,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: const [
                        Text(
                          'Day',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.looks_two_rounded,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: const [
                        Text(
                          'Day',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.looks_3_rounded,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              title: const Text(
                'events',
                style: TextStyle(
                  fontFamily: 'Samarkan',
                  fontSize: 40,
                  color: Colors.black87,
                ),
              ),
            ),
            body: Container(
              height: size.height * 0.75,
              // width: size.width * 0.9,
              child: TabBarView(
                children: [
                  FutureBuilder<List<dynamic>>(
                      future: futureEvents,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final repos = snapshot.data!;
                          return EventCard(repos[0]['day1'], context, size);
                        }
                        return const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Color(0xFFe3dfff),
                            valueColor: AlwaysStoppedAnimation(Colors.black45),
                            strokeWidth: 5,
                            value: 0.5,
                          ),
                        );
                      }),
                  FutureBuilder<List<dynamic>>(
                      future: futureEvents,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final repos = snapshot.data!;
                          return EventCard(repos[1]['day2'], context, size);
                        }
                        return const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Color(0xFFe3dfff),
                            valueColor: AlwaysStoppedAnimation(Colors.black45),
                            strokeWidth: 5,
                            value: 0.5,
                          ),
                        );
                      }),
                  FutureBuilder<List<dynamic>>(
                      future: futureEvents,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final repos = snapshot.data!;
                          return EventCard(repos[2]['day3'], context, size);
                        }
                        return const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Color(0xFFe3dfff),
                            valueColor: AlwaysStoppedAnimation(Colors.black45),
                            strokeWidth: 5,
                            value: 0.5,
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget EventCard(List<dynamic> repos, BuildContext context, Size size) =>
      ListView.builder(
        // padding: EdgeInsets.zero,
        itemCount: repos.length,
        itemBuilder: (context, index) {
          final repo = repos[index];
          return Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.04,
              right: size.width * 0.04,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.005, // ye hai size
                ),
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: size.height * 0.25,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: linGrad,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              repos[index]['title'],
                              style: GoogleFonts.bungeeShade(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(180, 0, 0, 0)
                                  // fontStyle: FontStyle.
                                  ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    height: size.height * 0.1,
                                    width: size.width * 0.5,
                                    color: Colors.white70,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        top: size.width * 0.02,
                                        bottom: size.width * 0.02,
                                        right: size.width * 0.03,
                                      ),
                                      child: Text(
                                        repos[index]['tagline'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Container(
                                    height: size.width * 0.23,
                                    width: size.width * 0.23,
                                    // color: Colors.black,
                                    child: Image.network(
                                        repos[index]['imageLink']),
                                    // decoration: BoxDecoration(
                                    //   shape: BoxShape.rectangle,
                                    //   image: DecorationImage(
                                    //     image: NetworkImage(
                                    //         repos[index]['imageLink']),
                                    //     fit: BoxFit.fill,
                                    //   ),
                                    // ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time: ${repos[index]['time']}",
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Venue: ",
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () =>
                                      launch(repos[index]['registration_link']),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF6CFFB9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Register",
                                    style: GoogleFonts.alumniSans(
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
