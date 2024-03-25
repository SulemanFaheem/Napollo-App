import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:napollo_app/splash.dart';

void main() {
  runApp(MaterialApp(
    theme: FlexThemeData.light(scheme: FlexScheme.deepPurple),
    darkTheme: FlexThemeData.dark(scheme: FlexScheme.deepPurple),
    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
  ));
}
