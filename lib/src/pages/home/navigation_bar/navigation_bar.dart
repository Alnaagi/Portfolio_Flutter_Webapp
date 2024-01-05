import 'package:flutter/material.dart';

class NavigationbarWidget extends StatelessWidget {
  const NavigationbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Mohamed Alnaagi',
            style: TextStyle(
                color: Color.fromARGB(255, 103, 80, 164),
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        Flexible(
          child: SizedBox(
            width: 200,
          ),
        ),
        _NavBarItem('About me'),
        SizedBox(
          width: 30,
        ),
        _NavBarItem('Projects'),
        SizedBox(
          width: 30,
        ),
        _NavBarItem('Contact me'),
      ],
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
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}
