import 'package:flutter/material.dart';

class CenteredViewpage extends StatelessWidget {
  final Widget child;
  const CenteredViewpage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.center,
      child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 2000), child: child),
    );
  }
}
