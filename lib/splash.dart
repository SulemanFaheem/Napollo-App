import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:napollo_app/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: FlutterSplashScreen.scale(
        // backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
          height: h * 0.4,
          width: w * 4,
          child: Image.asset("assets/Napollo.png"),
        ),
        duration: const Duration(seconds: 6),
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
