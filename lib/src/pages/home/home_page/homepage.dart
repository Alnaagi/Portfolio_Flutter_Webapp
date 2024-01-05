import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/about_me/about_me.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/intro_page/intro_page.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/navigation_bar/navigation_bar.dart';
import 'package:portfolio_flutter_webapp/src/pages/my_experiences/my_expirences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 26, 41),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: screenHeight * .680,
                  width: screenWidth,
                  child: Column(
                    children: [
                      NavigationbarWidget(),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          IntroPage(),
                        ],
                      ),
                    ],
                  ),
                ),
                AboutMePage(),
              ],
            ),
            MyExperiencespage(),
          ],
        ),
      ),
    );
  }
}
