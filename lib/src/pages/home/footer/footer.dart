import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alnaagi - 2024',
            style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
