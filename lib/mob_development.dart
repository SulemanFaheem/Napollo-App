// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:napollo_app/homescreen.dart';
import 'package:napollo_app/services/service.dart';

class MobD extends StatefulWidget {
  const MobD({super.key});

  @override
  State<MobD> createState() => _MobDState();
}

class _MobDState extends State<MobD> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                          child: Image.asset(
                            'assets/Napollo.png',
                            height: 40,
                            width: 40,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const HomeScreen())));
                          }),
                    )
                  ],
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Lottie.asset(
                    "assets/Mob.json",
                    fit: BoxFit.cover,
                  )),
                ),
              ];
            },
            body: SafeArea(
                child: Animate(
              effects: const [FadeEffect(), ScaleEffect()],
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 50,
                shadowColor: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: Text(
                            "Best Mobile App Development Company In New York, NY",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: Text(
                          "We Build Apps People Love To Use",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: Text(
                          "Innovative Product Design",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: SizedBox(
                          width: w * 0.9,
                          child: Text(
                            "Diving into market dynamics and understanding your brand, we pinpoint and amplify your unique edge.",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: Text(
                          "Consulting for Mobile Apps",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: Text(
                          "Innovative Product Design",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: SizedBox(
                          width: w * 0.9,
                          child: Text(
                            "Diving into market dynamics and understanding your brand, we pinpoint and amplify your unique edge.",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: Text(
                          "Maintenance & Support",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: SizedBox(
                          width: w * 0.9,
                          child: Text(
                            "Trust in Napollo’s post-launch support, with security updates and continuous refinements.",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 20, left: 20),
                        child: SizedBox(
                          width: w * 0.9,
                          child: Text(
                            "Our specialists assess app functionality, speed, safety, and overall user experience.",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: ElevatedButton(
                            onPressed: () {
                              Services.launchURL(
                                  'https://napollo.net/services/mobile-app-developers-in-new-york/#request-consultation');
                            },
                            child: const Text("Discuss My Project")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 25, right: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const FaIcon(FontAwesomeIcons.facebook),
                                  onPressed: () {
                                    Services.launchURL(
                                        "https://www.facebook.com/Napollogroup/");
                                  },
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                IconButton(
                                  icon: const FaIcon(FontAwesomeIcons.twitter),
                                  onPressed: () {
                                    Services.launchURL(
                                        "https://twitter.com/napolloc?lang=en");
                                  },
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                IconButton(
                                  icon:
                                      const FaIcon(FontAwesomeIcons.instagram),
                                  onPressed: () {
                                    Services.launchURL(
                                        "https://www.instagram.com/napollosoftwaredesign/");
                                  },
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                IconButton(
                                  icon:
                                      const FaIcon(FontAwesomeIcons.linkedinIn),
                                  onPressed: () {
                                    Services.launchURL(
                                        "https://www.linkedin.com/company/napollosoftwaredesign");
                                  },
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                IconButton(
                                  icon:
                                      const FaIcon(FontAwesomeIcons.pinterest),
                                  onPressed: () {
                                    Services.launchURL(
                                        "https://id.pinterest.com/napollosoftwaredesign/");
                                  },
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                              ],
                            ),
                            const Text(
                                '© Napollo. All rights reserved. \n          212-213-7866')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))));
  }
}