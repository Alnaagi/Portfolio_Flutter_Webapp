import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 4,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, i'm",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Mohamed Alnaagi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "cybersecurity enthusiast and a recent CS graduate",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        Flexible(flex: 1, child: SizedBox(width: 500)),
        Flexible(flex: 3, child: Image.asset('assets/2000.JPG', width: 500)),
      ],
    );
  }
}
