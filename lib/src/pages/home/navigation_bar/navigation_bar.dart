import 'package:flutter/material.dart';

class NavigationbarWidget extends StatelessWidget {
  const NavigationbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Mohamed Alnaagi',
            style: TextStyle(color: Colors.purple, fontSize: 20)),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: 5000,
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
    return Flexible(
      flex: 1,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
