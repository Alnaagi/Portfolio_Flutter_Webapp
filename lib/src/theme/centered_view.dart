import 'package:flutter/material.dart';

class CenteredViewpage extends StatelessWidget {
  final Widget child;
  const CenteredViewpage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.center,
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 2000), child: child),
    );
  }
}
