import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udgam2k23/constants.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "about",
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
                height: size.height * 0.02,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  child: SizedBox(
                    height: size.height * 0.35,
                    width: size.width * 0.65,
                    child: Image.asset(
                      "assets/images/udgam_p.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About Udgam",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "NIT Sikkim has been pioneering to bring about a new way\nof learning in the campus. NIT SIKKM has continuously\nbridged academics to home their skills and talents to\nevolve.",
                maxLines: 4,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "UDGAM is the magnificent annual cultural fest of NIT\nSIKKIM, a heart-throb fest of Kanchenjunga, a complete\nfeast for its participants and a matter of ecstasy for all its\nstudents. Offering a vivid blend of music, art, dance,\ntalent and enthralling events of the fest all brimming with\ncraziness, weirdness, wackiness and never ending\nentertainment. A room for roar, laugh and giggle.",
                maxLines: 7,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

              Container(
                  decoration: BoxDecoration(

                    gradient: linearGrad1,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  height: size.height*0.25,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                height: size.height*0.07,
                                width:size.height*0.07 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                )
                              ),



                                Text(
                                  "Namaewa name",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                                  
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                  height: size.height*0.07,
                                  width:size.height*0.07 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                  )
                              ),



                              Text(
                                "Namaewa name",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                  height: size.height*0.07,
                                  width:size.height*0.07 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                  )
                              ),



                              Text(
                                "Namaewa name",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),



                        ],
                      ),
                      SizedBox(
                        height: size.height*0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                  height: size.height*0.07,
                                  width:size.height*0.07 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                  )
                              ),



                              Text(
                                "Namaewa name",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                  height: size.height*0.07,
                                  width:size.height*0.07 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                  )
                              ),



                              Text(
                                "Namaewa name",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                  height: size.height*0.07,
                                  width:size.height*0.07 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage("assets/featured_events/fev1.png"),
                                  )
                              ),



                              Text(
                                "Namaewa name",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Kaizoku",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),



                        ],
                      ),

                    ],
                  ),

                ),








            //About Contributors
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text(
                    "About Contributors",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),

              //guest sponsor button
              SizedBox(
                height: size.height * 0.01,
              ),

             Row(

               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children :[
                     Container(
                       decoration: BoxDecoration(

                         gradient: linearGrad1,
                         borderRadius: BorderRadius.circular(
                           10,
                         ),
                       ),
                       height: size.height * 0.065,
                       width: size.width*0.45,

                       child: Padding(
                         padding: EdgeInsets.only(
                           left: size.width * 0.02,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:const [
                             Text(
                               "guests",
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

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children :[
                     Container(
                       height: size.height * 0.065,
                       width: size.width*0.45,
                       decoration: BoxDecoration(

                         gradient: linearGrad1,
                         borderRadius: BorderRadius.circular(
                           10,
                         ),
                       ),
                       child: Padding(
                         padding: EdgeInsets.only(
                           left: size.width * 0.02,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:const [
                             Text(
                               "sponsors",
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
                   ],
                 ),
               ],
             ),




              //Merchandise
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Our Merchandise",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),

              //merchandise button
              SizedBox(
                height: size.height * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children :[
                  Container(
                    height: size.height * 0.065,
                    width: size.width*0.92,
                    decoration: BoxDecoration(
                      gradient: linearGrad1,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Merchandise",
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

                ],
              ),


              //teams
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Our Teams",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),

              //team button
              SizedBox(
                height: size.height * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children :[
                  Container(
                    height: size.height * 0.065,
                    width: size.width*0.92,
                    decoration: BoxDecoration(

                      gradient: linearGrad1,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Teams",
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

                ],
              ),


              //Devs
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About Developers",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),

              //dev button
              SizedBox(
                height: size.height * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children :[
                  Container(
                    height: size.height * 0.065,
                    width: size.width*0.92,
                    decoration: BoxDecoration(
                      gradient: linearGrad1,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Devs",
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

                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),




              //visit us
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "visit us",
                    style: GoogleFonts.berkshireSwash(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Stay up-to-date with our latest news and events by subscribing to our newsletter. By subscribing, you'll receive regular updates straight to your inbox about our organization's activities, news, and events.",
                maxLines: 7,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              //links
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      method.launch(
                          "https://www.facebook.com/udgam.nitsikkim/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method.launch(
                          "https://www.instagram.com/udgam_nitsikkim/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method
                          .launch("https://www.youtube.com/@NITSikkimUdgam");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      method.launch("http://udgam.nitsikkim.ac.in/");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.globe,
                      color: dividerColor,
                      size: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
