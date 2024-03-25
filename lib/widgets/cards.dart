import 'package:flutter/material.dart';
import 'package:gradient_coloured_buttons/gradient_coloured_buttons.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

// ignore: must_be_immutable
class Cards extends StatefulWidget {
  final String textcontainer;
  final String imagecontainer;
  Function onPressed;
  final String titlecontainer;

  Cards({
    super.key,
    required this.textcontainer,
    required this.imagecontainer,
    required this.titlecontainer,
    required this.onPressed,
  });

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Shimmer(
        duration: const Duration(seconds: 10),
        interval: const Duration(seconds: 1),
        color: Colors.deepPurple,
        colorOpacity: 0,
        enabled: true,
        direction: const ShimmerDirection.fromLTRB(),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 50,
            shadowColor: Colors.black,
            child: SizedBox(
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 12, 8, 20),
                    child: Column(children: [
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.black),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(widget.imagecontainer))),

                      const SizedBox(
                        height: 10,
                      ), //SizedBox,
                      Text(
                        widget.titlecontainer,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.textcontainer,
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: w*0.2,
                        child: GradientButton(
                            text: "Visit",
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                            gradientColors: [
                              Colors.blue.shade300,
                              Colors.deepPurple
                            ],
                            width: w*0.4,
                            height: h*0.03,
                            borderRadius: 30.0,
                            onPressed: () {
                              widget.onPressed();
                            }),
                      )
                    ])))),
      ),
    );
  }
}
