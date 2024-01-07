import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.03, right: screenWidth * 0.03),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  "https://readme-typing-svg.demolab.com?font=Fira+Code&size=25&duration=4000&pause=700&color=F7F7F7&random=false&width=450&height=100&lines=HELLO+FRIEND!;I'm+Mohamed+Alnaagi;Welcome+To+My+Web+App;Feel+Free+To+Look+Around"),
              // Text(
              //   "Hello, i'm",
              //   style: TextStyle(
              //       color: Colors.grey.shade200,
              //       fontSize: screenWidth * 0.08,
              //       fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   "Mohamed Alnaagi",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: screenWidth * 0.10,
              //       fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 5),
              Text(
                "A cybersecurity enthusiast and a recent CS graduate",
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: screenWidth * .04,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color.fromARGB(255, 65, 55, 111),
                          fixedSize: Size(120, 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      onPressed: () => launchUrlString(
                          'https://drive.google.com/file/d/1O3BoxlM8r89Y0deWCN4hMdK9Jl0EGTiH/view?usp=sharing'),
                      label: Text('My CV',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                      icon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(width: 15),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white70,
                          side: BorderSide(
                              color: Color.fromARGB(255, 117, 98, 224)),
                          fixedSize: Size(120, 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      onPressed: () =>
                          launchUrlString('https://github.com/Alnaagi'),
                      label: Text('Projects', style: TextStyle(fontSize: 12)),
                      icon: Icon(Icons.remove_red_eye),
                    ),
                  )
                ],
              ),
            ],
          ),
          // Expanded(
          //     child: SizedBox(
          //   width: 200,
          // )),
          // Column(
          //   children: [
          //     Stack(
          //       alignment: Alignment.center,
          //       children: [
          //         Image.asset('assets/Ellipse.png', width: screenWidth * .25),
          //         Image.asset('assets/me.png', width: screenWidth * .20),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
