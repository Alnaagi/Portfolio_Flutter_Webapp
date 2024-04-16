import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/my_experiences/my_expirences.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 5),
          child: Text(
            "feel free to read this:",
            style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 100,
              child: Container(
                child: Text(
                  "Hi, my name is Mohamed Alnaagi, I'm a Cybersecurity enthusiast with some experience in software development. ",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
