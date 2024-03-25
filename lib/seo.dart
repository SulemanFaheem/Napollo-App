// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:napollo_app/homescreen.dart';
import 'package:napollo_app/services/service.dart';

class Seo extends StatefulWidget {
  const Seo({super.key});

  @override
  State<Seo> createState() => _Seo();
}

class _Seo extends State<Seo> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
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
                background: Lottie.asset("assets/seoback.json")),
          ),
        ];
      },
      body: SafeArea(
        child: Animate(
          effects: const [FadeEffect(), ScaleEffect()],
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 100,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 20, right: 10, left: 20),
                        child: Text(
                          "Recommended by Thousands Of Businesses",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(height: 0),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 20, right: 20, left: 20),
                          child: SizedBox(
                            width: w * 0.9,
                            child: Text(
                              "When seeking professional SEO services, it’s essential to find a company that genuinely understands your needs. This is where Napollo shines. As a top-tier professional SEO services company, we prioritize tangible results over mere promises. Our tailored seo website optimization services, combined with our skilled seo consultants and management team, ensure your brand stands out in the digital realm.",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/Rhs.png")
                        .animate()
                        .fade(duration: 800.ms)
                        .scale(delay: 800.ms),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 4, bottom: 20, right: 10, left: 20),
                      child: Text(
                        "Ranking High,the Seamless Way.",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 4, bottom: 20, right: 20, left: 20),
                      child: SizedBox(
                        width: w * 0.9,
                        child: Text(
                          "At Napollo, we offer tailored SEO solutions for all business stages. Startups can benefit from our affordable packages, while established brands utilize our monthly strategies for enhanced visibility. Beyond SEO, as a comprehensive search engine marketing agency, we’re dedicated to your brand’s holistic digital growth. Partner with Napollo and embark on a successful digital journey.",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Image.asset("assets/Ouc.png"),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 4, bottom: 20, right: 20, left: 20),
                      child: Text(
                        "Outrank Your Competition.",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 4, bottom: 20, right: 20, left: 20),
                      child: SizedBox(
                        width: w * 0.9,
                        child: Text(
                          "Our SEO specialists dive deep into competitive analysis, ensuring you always have the upper hand. Curious about your competitors’ backlink strategies or keyword optimization? Want insights into their on-page tactics or technical SEO setups? We’ve got you covered. At Napollo, every SEO strategy is crafted uniquely for you, ensuring you not only match but surpass the competition.",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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
    ));
  }
}