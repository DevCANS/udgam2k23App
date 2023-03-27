import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/about/widgets/guest_card.dart';
import 'package:url_launcher/url_launcher.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({super.key});

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  late Future<List<dynamic>> futureEvents;
  Methods method = Methods();
  Future<List<dynamic>> fetchRepos(BuildContext context) async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/dee-Rajak/MyPublicRepo/main/Docs/Udgam2k23/jsons/guest.json'));
    // 'https://raw.githubusercontent.com/saurav-inde/website/main/temp.json'));
    if (response.statusCode == 200) {
      final body = json.decode(response.body)['guest_list'];
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
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.01,
                right: size.width * 0.01,
              ),
              child: Container(
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        " Guests",
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              height: size.height * 0.85,
              child: FutureBuilder<List<dynamic>>(
                  future: futureEvents,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final teams = snapshot.data!;
                      return GuestData(teams[0]['guest'], context, size);
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
            ),
          ],
        ),
      ),
    );
  }
}
