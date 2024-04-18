import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/about_me/about_me.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/footer/footer.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/intro_page/intro_page.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/my_experiences/my_expirences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ImageProvider logo = const AssetImage("assets/10.jpg");
    var media = MediaQuery.of(context).size;
    if (media.width > 500) {
      setState(() {});
    }
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 26, 26, 41),
      body: Container(
        height: media.height,
        width: media.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: logo, fit: BoxFit.fill),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //NavigationbarWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      IntroPage(),
                      AboutMePage(),
                      MyExperiencespage(),
                      FooterPage()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
