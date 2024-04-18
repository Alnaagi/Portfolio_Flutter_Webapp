import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    late int gridResponsive = 2;
    late double responsiveHeight;
    late double responsiveWidth;
    double mobile = 544;
    double medium = 768;
    double Desktop = 992;
    double Fullscreen = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    if (media.width > Desktop) {
      setState(() {
        gridResponsive = 4;
        responsiveHeight = 200;
        responsiveWidth = 800;
        // print("Fullscreen");
      });
    } else if (media.width > medium) {
      setState(() {
        gridResponsive = 4;
        responsiveHeight = 200;
        responsiveWidth = 750;
        // print("Desktop");
      });
    } else if (media.width > mobile) {
      setState(() {
        gridResponsive = 2;
        responsiveHeight = 500;
        responsiveWidth = 500;
        // print("medium");
      });
    } else if (media.width <= Desktop) {
      setState(() {
        responsiveHeight = 400;
        responsiveWidth = 400;
        // print("mobile");
      });
    } else {}

    return Container(
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
        padding:
            const EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://readme-typing-svg.demolab.com?font=Fira+Code&size=25&duration=4000&pause=700&color=F7F7F7&random=false&width=450&height=40&lines=HELLO+FRIEND!;I'm+Mohamed+Alnaagi;Welcome+To+My+Web+App;Feel+Free+To+Look+Around"),
            Text(
              "A cybersecurity enthusiast and a Flutter Developer",
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      fixedSize: const Size(120, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () => launchUrlString(
                      'https://drive.google.com/file/d/1O3BoxlM8r89Y0deWCN4hMdK9Jl0EGTiH/view?usp=sharing'),
                  label: const Text('My CV',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(width: 15),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white70,
                      side: const BorderSide(color: Colors.teal),
                      fixedSize: const Size(120, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () =>
                      launchUrlString('https://github.com/Alnaagi'),
                  label: const Text('Projects', style: TextStyle(fontSize: 12)),
                  icon: const Icon(Icons.remove_red_eye),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
