// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';
import 'package:metaballs/metaballs.dart';
import 'package:napollo_app/AboutUs.dart';
import 'package:napollo_app/mob_development.dart';
import 'package:napollo_app/seo.dart';
import 'package:napollo_app/services/service.dart';
import 'package:napollo_app/web_development.dart';
import 'package:napollo_app/widgets/cards.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get divider => null;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.only(top: 90.0, bottom: 30.0),
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: h * 0.40,
                width: w * 3,
                child: DrawerHeader(
                  child: Column(
                    children: [
                      WidgetCircularAnimator(
                        innerIconsSize: 4,
                        outerIconsSize: 4,
                        innerAnimation: Curves.bounceIn,
                        outerAnimation: Curves.linear,
                        innerColor: Colors.blue,
                        outerColor: Colors.deepPurple,
                        child: Image.asset(
                          'assets/Napollo.png',
                          height: h * 0.4,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Napollo Software Design LLC',
                        style: TextStyle(fontSize: h * 0.02),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  size: 28,
                ),
                title: const Text('Home')
                    .animate()
                    .fade(duration: 500.ms)
                    .scale(delay: 500.ms),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite_border),
                title: const Text('About Us')
                    .animate()
                    .fade(duration: 500.ms)
                    .scale(delay: 500.ms),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
              ),
              ListTile(
                  leading: const Icon(Icons.web_stories_outlined),
                  title: const Text('Web Development')
                      .animate()
                      .fade(duration: 500.ms)
                      .scale(delay: 500.ms),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const WebD()));
                  }),
              ListTile(
                  leading: const Icon(Icons.mobile_friendly_outlined),
                  title: const Text('Mobile App Development')
                      .animate()
                      .fade(duration: 500.ms)
                      .scale(delay: 500.ms),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MobD())));
                  }),
              ListTile(
                  leading: const FaIcon(
                    Icons.stacked_line_chart_outlined,
                  ),
                  title: const Text('SEO')
                      .animate()
                      .fade(duration: 500.ms)
                      .scale(delay: 500.ms),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => const Seo())));
                  }),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/Napollo.png',
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
      body: Metaballs(
        color: const Color.fromARGB(255, 66, 133, 244),
        effect: MetaballsEffect.follow(
          growthFactor: 1,
          smoothing: 1,
          radius: 0.5,
        ),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 90, 60, 255),
            Color.fromARGB(255, 120, 255, 255),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        metaballs: 40,
        animationDuration: const Duration(milliseconds: 200),
        speedMultiplier: 1,
        bounceStiffness: 3,
        minBallRadius: 15,
        maxBallRadius: 40,
        glowRadius: 0.7,
        glowIntensity: 0.6,
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 50,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/Napollo.png",
                                height: 200,
                                width: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Napollo Software",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 160,
                                    child: const Text(
                                      "Market Leader in Web App Development & Website Management",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  GradientButton(
                                    text: "Contact Us",
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                    gradientColors: const [
                                      Colors.purple,
                                      Colors.blueAccent,
                                      Colors.blue,
                                      Colors.purple
                                    ],
                                    width: 145,
                                    height: 40,
                                    borderRadius: 30.0,
                                    onPressed: () {
                                      Services.launchURL(
                                          'https://napollo.net/contact-us/');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: Text(
                        'Recent Accomplishments:',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Cards(
                      textcontainer:
                          'Connect Social is a new and exciting Social Economy that is unique as it rewards consumers for their data allowing Merchants to purchase VERIFIED Consumer data. ',
                      imagecontainer: 'assets/connectsocial.png',
                      titlecontainer: 'Connect Social',
                      onPressed: () {
                        Services.launchURL("https://iamconnect.com/");
                      },
                    ),
                    Cards(
                      textcontainer:
                          'First healthcare AI based online solution in the region. Saving your time & money by offering you online triage.',
                      imagecontainer: 'assets/Doc.png',
                      titlecontainer: 'GOTRIAGE',
                      onPressed: () {
                        Services.launchURL("https://gotriage.com/home");
                      },
                    ),
                    Cards(
                      textcontainer:
                          'ROCKET YOUR TRADING SKILLS JOIN THE LARGEST COMMUNITY OF TRADERS',
                      imagecontainer: 'assets/rocket.png',
                      titlecontainer: 'ROCKET21',
                      onPressed: () {
                        Services.launchURL("https://rocket21challenge.com/");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
