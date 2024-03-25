// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:napollo_app/homescreen.dart';
import 'package:napollo_app/services/service.dart';

class WebD extends StatefulWidget {
  const WebD({super.key});

  @override
  State<WebD> createState() => _WebD();
}

class _WebD extends State<WebD> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
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
                    "assets/Animation - 1704996807350.json",
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 20, right: 10, left: 20),
                            child: Text(
                              "Expert web app development services",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: h / 40,
                                  fontWeight: FontWeight.bold),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 10, left: 20),
                          child: Text(
                            "Get custom web app development from Industry experts.",
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
                            "Understanding Your Needs",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: SizedBox(
                            width: w * 0.9,
                            child: Text(
                              "Our process commences with a deep understanding of your business objectives and specific requirements. We cater to diverse needs, be it a customer-facing web application to foster engagement or an internal app to streamline operations.",
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
                            "Commitment to Quality",
                            textAlign: TextAlign.start,
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
                              "Rigorous testing is at the heart of our process. We ensure each application is secure, bug-free, and performs optimally. Post-launch, we provide ongoing maintenance to keep it valuable for your business.",
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
                                    'https://napollo.net/web-app-development-services/#request-consultation');
                              },
                              child: const Text("Request a Consulation")),
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
                                    icon:
                                        const FaIcon(FontAwesomeIcons.facebook),
                                    onPressed: () {
                                      Services.launchURL(
                                          "https://www.facebook.com/Napollogroup/");
                                    },
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  IconButton(
                                    icon:
                                        const FaIcon(FontAwesomeIcons.twitter),
                                    onPressed: () {
                                      Services.launchURL(
                                          "https://twitter.com/napolloc?lang=en");
                                    },
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.instagram),
                                    onPressed: () {
                                      Services.launchURL(
                                          "https://www.instagram.com/napollosoftwaredesign/");
                                    },
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.linkedinIn),
                                    onPressed: () {
                                      Services.launchURL(
                                          "https://www.linkedin.com/company/napollosoftwaredesign");
                                    },
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  IconButton(
                                    icon: const FaIcon(
                                        FontAwesomeIcons.pinterest),
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
                        ),
                      ]),
                ),
              ),
            ))));
  }
}