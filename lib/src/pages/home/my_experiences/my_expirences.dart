// ignore_for_file: unused_local_variable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/my_experiences/expirences_widget.dart';

class MyExperiencespage extends StatefulWidget {
  const MyExperiencespage({super.key});

  @override
  State<MyExperiencespage> createState() => _MyExperiencespageState();
}

class _MyExperiencespageState extends State<MyExperiencespage> {
  List listArr = [
    {
      "title": "CyberSecurity",
      "subtitle": "Still learning",
      "image": "assets/kali.png"
    },
    {
      "title": "Prayer - مؤذن",
      "subtitle": "Mobile App",
      "image": "assets/flutter.jpeg"
    },
    {
      "title": "LiftLog",
      "subtitle": "Mobile App",
      "image": "assets/liftlog1.png"
    },
    {
      "title": "AlHadera",
      "subtitle": "Mobile App",
      "image": "assets/alhadera.png"
    },
  ];

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4,
          sigmaY: 4,
        ),
        child: Container(
          width: responsiveWidth,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                  child: Text(
                    "My Experiences",
                    style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridResponsive),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listArr.length,
                    itemBuilder: (context, index) {
                      var obj = listArr[index] as Map? ?? {};
                      return ExpirencesWidget(
                        obj: obj,
                        onPressed: () {},
                      );
                    },
                  ),
                ),
                // Expanded(
                // child: ListView.builder(
                //   itemCount: 4,
                //   itemBuilder: (context, index) {
                //     return const MyTile();
                //   },
                // ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.grey[400],
//         ),
//       ),
//     );
//   }
// }

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 117, 98, 224)),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 40.0, top: 10, bottom: 10, right: 38),
                  child: Image(
                    image: AssetImage(
                      'assets/flutter.png',
                    ),
                  ),
                ),
                Text(
                  "Mobile Development",
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 117, 98, 224)),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 40.0, top: 10, bottom: 10, right: 38),
                  child: Image(
                    image: AssetImage(
                      'assets/html.png',
                    ),
                  ),
                ),
                Text(
                  "Web Development",
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 10,
        //   ),
        //   child: Container(
        //     child: Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 50.0),
        //           child: Image(
        //             image: AssetImage(
        //               'assets/kali.png',
        //             ),
        //           ),
        //         ),
        //         Text(
        //           "Penetration Testing",
        //           style: TextStyle(
        //               color: Colors.grey.shade100,
        //               fontSize: 20,
        //               fontWeight: FontWeight.normal),
        //         ),
        //       ],
        //     ),
        //     height: 78,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(8),
        //         color: Color.fromARGB(255, 117, 98, 224)),
        //   ),
        // ),
      ],
    );
  }
}
