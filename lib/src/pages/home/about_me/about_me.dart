import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 26, 26, 41),
            borderRadius: BorderRadiusDirectional.circular(20.0)),
        height: 220,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "feel free to read this:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Flexible(
              child: Text(
                "Hi, my name is Mohamed Alnaagi, I am a highly motivated Cybersecurity enthusiast and a recent CS graduate with a strong desire to learn & grow, especially in Cybersecurity. For my graduation project, I developed an app using the Flutter framework and Firebase database, which helped me gain experience in software development. ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
