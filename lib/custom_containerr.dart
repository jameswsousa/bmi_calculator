import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  CustomContainer({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
