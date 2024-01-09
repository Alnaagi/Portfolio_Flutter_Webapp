import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/about_me/about_me.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/footer/footer.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/intro_page/intro_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 26, 26, 41),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //NavigationbarWidget(),
            SizedBox(
              height: 40,
            ),
            IntroPage(),
            AboutMePage(),

            FooterPage()
          ],
        ),
      ),
    );
  }
}
