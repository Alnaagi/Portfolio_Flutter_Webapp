import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/my_experiences/my_expirences.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    late double RESPONSIVE;
    double mobile = 450;
    double Desktop = 750;
    double Fullscreen = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    if (media.width > Desktop) {
      setState(() {
        RESPONSIVE = Fullscreen;
        print("Fullscreen");
      });
    } else if (media.width > mobile) {
      setState(() {
        RESPONSIVE = 500;
        print("Desktop");
      });
    } else if (media.width <= Desktop) {
      setState(() {
        RESPONSIVE = mobile;
        print("mobile");
      });
    } else {}
    return SizedBox(
      width: RESPONSIVE,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
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
            "Hi, my name is Mohamed Alnaagi, I'm a Cybersecurity enthusiast with some experience in software development. ",
            style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
