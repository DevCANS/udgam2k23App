import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';
import 'package:xen_popup_card/xen_card.dart';
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
        'https://raw.githubusercontent.com/dee-Rajak/MyPublicRepo/main/Docs/Udgam2k23/jsons/events.json'));
    // 'https://raw.githubusercontent.com/saurav-inde/website/main/temp.json'));
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
                  child: InkWell(
                    onTap: () => showDialog(
                      context: context,
                      builder: (builder) => XenPopupCard(
                        body: ListView(
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.002,
                                  right: size.width * 0.002,
                                ),
                                child: Column(
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                        child: SizedBox(
                                          height: size.height * 0.35,
                                          width: double.infinity,
                                          child: Image.network(
                                              repos[index]['imageLink']),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          repos[index]['title'],
                                          style: GoogleFonts.berkshireSwash(
                                            fontWeight: FontWeight.w500,
                                            fontSize: size.height * 0.03,
                                          ),
                                        ),
                                        Divider(
                                          color: backgroundColor2,
                                          thickness: size.height * 0.01,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          repos[index]['tagline'],
                                          style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontStyle: FontStyle.italic,
                                            fontSize: size.height * 0.025,
                                          ),
                                        ),
                                      ],
                                    ),

                                    //time & venue
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: backgroundColor,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      height: size.height * 0.045,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.02,
                                        ),
                                        child: Center(
                                          child: Text(
                                            repos[index]['time'],
                                            style: GoogleFonts.lexendDeca(
                                              fontSize: size.height * 0.022,
                                              // fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        color: backgroundColor,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      height: size.height * 0.045,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.02,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "@ ${repos[index]['venue']}",
                                            style: GoogleFonts.lexendDeca(
                                              fontSize: size.height * 0.022,
                                              // fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () =>
                                            launch(repos[index]['rule_book']),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 255, 201, 108),
                                        ),
                                        child: Text(
                                          "More Details",
                                          style: GoogleFonts.alumniSans(
                                            fontSize: size.height * 0.03,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),

                                    ElevatedButton(
                                      onPressed: () => launch(
                                          repos[index]['registration_link']),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF6CFFB9),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.29)),
                                      child: Text(
                                        repos[index]['status'],
                                        style: GoogleFonts.alumniSans(
                                          fontSize: size.height * 0.03,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Card(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        child: Container(
                                          height: size.height * 0.095,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                              color: backgroundColor
                                              // gradient: linearGrad3,
                                              ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: size.height * 0.005,
                                              left: size.width * 0.025,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  repos[index]['name1'],
                                                  style: GoogleFonts.poppins(
                                                    fontSize:
                                                        size.height * 0.02,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () => launch(
                                                          "tel:${repos[index]['phone1']}"),
                                                      icon: FaIcon(
                                                        FontAwesomeIcons.phone,
                                                        color: Colors.black,
                                                        size:
                                                            size.height * 0.018,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () => launch(
                                                          "mailto:${repos[index]['mail1']}"),
                                                      icon: Icon(
                                                        Icons.mail,
                                                        color: Colors.black,
                                                        size:
                                                            size.height * 0.018,
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
                                    if (repos[index]['name2'].isNotEmpty)
                                      Card(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: Container(
                                            height: size.height * 0.095,
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                                color: backgroundColor
                                                // gradient: linearGrad3,
                                                ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: size.height * 0.005,
                                                left: size.width * 0.02,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    repos[index]['name2'],
                                                    style: GoogleFonts.poppins(
                                                      fontSize:
                                                          size.height * 0.02,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () => launch(
                                                            "tel:${repos[index]['phone2']}"),
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .phone,
                                                          color: Colors.black,
                                                          size: size.height *
                                                              0.018,
                                                        ),
                                                      ),
                                                      IconButton(
                                                        onPressed: () => launch(
                                                            "mailto:${repos[index]['mail2']}"),
                                                        icon: Icon(
                                                          Icons.mail,
                                                          color: Colors.black,
                                                          size: size.height *
                                                              0.018,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                                height: size.height * 0.01,
                              ),
                              Text(
                                repos[index]['title'],
                                style: GoogleFonts.bungeeShade(
                                    fontSize: size.height * 0.025,
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
                                            fontSize: size.height * 0.017,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: size.width * 0.25,
                                      width: size.width * 0.25,
                                      // color: Colors.black,
                                      child: Image.network(
                                          repos[index]['imageLink']),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time: ${repos[index]['time']}",
                                        style: GoogleFonts.lexend(
                                          fontSize: size.height * 0.015,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Venue: ",
                                        style: GoogleFonts.lexend(
                                          fontSize: size.height * 0.015,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () => launch(
                                        repos[index]['registration_link']),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF6CFFB9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      repos[index]['status'],
                                      style: GoogleFonts.alumniSans(
                                        fontSize: size.height * 0.026,
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
                ),
              ],
            ),
          );
        },
      );
}
