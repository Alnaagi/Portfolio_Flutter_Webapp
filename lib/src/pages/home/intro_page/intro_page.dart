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
    late double RESPONSIVE;
    double mobile = 450;
    double Desktop = 750;
    double Fullscreen = MediaQuery.of(context).size.width;
    var media = MediaQuery.of(context).size;
    if (media.width > Desktop) {
      setState(() {
        grid_responsive = 4;
        RESPONSIVE = Fullscreen;
        print("Fullscreen");
      });
    } else if (media.width > mobile) {
      setState(() {
        grid_responsive = 2;
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
          Image.network(
              "https://readme-typing-svg.demolab.com?font=Fira+Code&size=25&duration=4000&pause=700&color=F7F7F7&random=false&width=450&height=50&lines=HELLO+FRIEND!;I'm+Mohamed+Alnaagi;Welcome+To+My+Web+App;Feel+Free+To+Look+Around"),
          SizedBox(height: 5),
          Text(
            "A cybersecurity enthusiast and Flutter Developer",
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
                    foregroundColor: Color.fromARGB(255, 65, 55, 111),
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
                    side: BorderSide(color: Color.fromARGB(255, 117, 98, 224)),
                    fixedSize: Size(120, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                onPressed: () => launchUrlString('https://github.com/Alnaagi'),
                label: Text('Projects', style: TextStyle(fontSize: 12)),
                icon: Icon(Icons.remove_red_eye),
              )
            ],
          ),
        ],
      ),
    );
  }
}
