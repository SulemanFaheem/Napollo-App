// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:napollo_app/homescreen.dart';
import 'package:napollo_app/services/service.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
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
                                  builder: ((context) => const HomeScreen())));
                        }),
                  )
                ],
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Lottie.asset(
                  "assets/Aboutus.json",
                )),
              ),
            ];
          },
          body: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 50,
            shadowColor: Colors.black,
            child: SizedBox(
              height: 700,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(
                                top: 4, bottom: 20, right: 20, left: 20),
                            child: Text(
                              "The Website Management Company",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(height: 0),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 4, bottom: 20, right: 20, left: 20),
                              child: SizedBox(
                                width: 350,
                                child: Text(
                                  "Napollo is a leading website management company committed to empowering businesses to transcend their digital potential. Our story is built around innovation, service, and a steadfast commitment to quality.",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 20, right: 20, left: 20),
                              child: SizedBox(
                                width: 350,
                                child: Text(
                                  "* Better in Quality",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 20, right: 20, left: 20),
                              child: SizedBox(
                                width: 350,
                                child: Text(
                                  "* Faster in Service",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 20, right: 20, left: 20),
                              child: SizedBox(
                                width: 350,
                                child: Text(
                                  "* Cheaper in Cost",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: Text(
                            "Our Story",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: SizedBox(
                            width: 350,
                            child: Text(
                              "Napollo is founded by Harvard Professionals with decades of practical experience working with small and medium businesses with vision to make a significant impact in the digital world. Napollo has grown into a fully-fledged website management company, renowned for their expertise, creativity, and customer-centric approach",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Image.asset("assets/Story.png")
                            .animate()
                            .fade(duration: 800.ms)
                            .scale(delay: 800.ms),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: Text(
                            "Our Mission",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: SizedBox(
                            width: 350,
                            child: Text(
                              "To help entrepreneurs adopt technology to grow their business, through extending expert website services at an affordable price. Napollo is market leader in website management helping everyday entrepreneurs across the United States.",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Image.asset("assets/sucess.png")
                            .animate()
                            .fade(duration: 800.ms)
                            .scale(delay: 800.ms),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: Text(
                            "Our Success",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: SizedBox(
                            width: 350,
                            child: Text(
                              "Napollo believes in shared success based on trust and benefit. Hence everything we do is aligned with one goal only. “A perfect website that should drive more customers for your business”.Your success is our success.",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
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
                                icon: const FaIcon(FontAwesomeIcons.instagram),
                                onPressed: () {
                                  Services.launchURL(
                                      "https://www.instagram.com/napollosoftwaredesign/");
                                },
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              IconButton(
                                icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                                onPressed: () {
                                  Services.launchURL(
                                      "https://www.linkedin.com/company/napollosoftwaredesign");
                                },
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              IconButton(
                                icon: const FaIcon(FontAwesomeIcons.pinterest),
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
          ),
        ),
      ),
    );
  }
}
