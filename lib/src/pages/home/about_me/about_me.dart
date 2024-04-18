import 'dart:ui';

import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    // late int gridResponsive = 2;
    // late double responsiveHeight;
    late double responsiveWidth;
    double mobile = 544;
    double medium = 768;
    double Desktop = 992;
    // double Fullscreen = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    if (media.width > Desktop) {
      setState(() {
        // gridResponsive = 4;
        // responsiveHeight = 200;
        responsiveWidth = 800;
        // print("Fullscreen");
      });
    } else if (media.width > medium) {
      setState(() {
        // gridResponsive = 4;
        // responsiveHeight = 200;
        responsiveWidth = 750;
        // print("Desktop");
      });
    } else if (media.width > mobile) {
      setState(() {
        // gridResponsive = 2;
        // responsiveHeight = 500;
        responsiveWidth = 500;
        // print("medium");
      });
    } else if (media.width <= Desktop) {
      setState(() {
        // responsiveHeight = 400;
        responsiveWidth = 400;
        // print("mobile");
      });
    } else {}
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // border:
              //     Border.symmetric(horizontal: BorderSide(color: Colors.black)),

              boxShadow: const [
                BoxShadow(
                    blurRadius: 0,
                    color: Colors.black45,
                    spreadRadius: 5,
                    offset: Offset(2, 4))
              ],
            ),
            width: responsiveWidth,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "feel free to read this:",
                    style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "As an Cybersecurity enthusiast and a Flutter developer, I possess a strong desire to learn and grow in the cybersecurity field, particularly, and in software development in general.I have developed multiple apps using the Flutter framework and Firebase database, gaining experience in cross-platform development. Currently, I am actively pursuing the Security+ certification to solidify my foundation in cybersecurity. Following this, I plan to pursue further certifications in the field.",
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
