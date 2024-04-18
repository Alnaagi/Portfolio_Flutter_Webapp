import 'package:flutter/material.dart';

class NavigationbarWidget extends StatelessWidget {
  const NavigationbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.03, right: screenWidth * 0.03, top: 35),
      child: Row(
        children: [
          Text('M.Alnaagi',
              style: TextStyle(
                  color: Colors.indigo.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const _NavBarItem('About me'),
          const SizedBox(
            width: 18,
          ),
          const _NavBarItem('Projects'),
          const SizedBox(
            width: 18,
          ),
          const _NavBarItem('Contact me'),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
