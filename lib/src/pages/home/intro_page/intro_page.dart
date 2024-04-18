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
    late int grid_responsive = 2;
    late double RESPONSIVE_height;
    late double RESPONSIVE_width;
    double mobile = 544;
    double medium = 768;
    double Desktop = 992;
    double Fullscreen = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    if (media.width > Desktop) {
      setState(() {
        grid_responsive = 4;
        RESPONSIVE_height = 200;
        RESPONSIVE_width = 800;
        print("Fullscreen");
      });
    } else if (media.width > medium) {
      setState(() {
        grid_responsive = 4;
        RESPONSIVE_height = 200;
        RESPONSIVE_width = 750;
        print("Desktop");
      });
    } else if (media.width > mobile) {
      setState(() {
        grid_responsive = 2;
        RESPONSIVE_height = 500;
        RESPONSIVE_width = 500;
        print("medium");
      });
    } else if (media.width <= Desktop) {
      setState(() {
        RESPONSIVE_height = 400;
        RESPONSIVE_width = 400;
        print("mobile");
      });
    } else {}

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border:
        //     Border.symmetric(horizontal: BorderSide(color: Colors.black)),

        boxShadow: [
          BoxShadow(
              blurRadius: 0,
              color: Colors.black45,
              spreadRadius: 5,
              offset: const Offset(2, 4))
        ],
      ),
      width: RESPONSIVE_width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://readme-typing-svg.demolab.com?font=Fira+Code&size=25&duration=4000&pause=700&color=F7F7F7&random=false&width=450&height=50&lines=HELLO+FRIEND!;I'm+Mohamed+Alnaagi;Welcome+To+My+Web+App;Feel+Free+To+Look+Around"),
            SizedBox(height: 5),
            Text(
              "A cybersecurity enthusiast and a Flutter Developer",
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.teal,
                      fixedSize: Size(120, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () => launchUrlString(
                      'https://drive.google.com/file/d/1O3BoxlM8r89Y0deWCN4hMdK9Jl0EGTiH/view?usp=sharing'),
                  label: Text('My CV',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  icon: Icon(Icons.person),
                ),
                SizedBox(width: 15),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white70,
                      side: BorderSide(color: Colors.teal),
                      fixedSize: Size(120, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () =>
                      launchUrlString('https://github.com/Alnaagi'),
                  label: Text('Projects', style: TextStyle(fontSize: 12)),
                  icon: Icon(Icons.remove_red_eye),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
