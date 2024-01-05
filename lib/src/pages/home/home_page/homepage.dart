import 'package:flutter/material.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/intro_page/intro_page.dart';
import 'package:portfolio_flutter_webapp/src/pages/home/navigation_bar/navigation_bar.dart';
import 'package:portfolio_flutter_webapp/src/theme/centered_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 26, 41),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: CenteredViewpage(
            child: Flexible(
              child: Column(children: [
                NavigationbarWidget(),
                SizedBox(
                  height: 20,
                ),
                IntroPage()
              ]),
            ),
          ),
        ));
  }
}
