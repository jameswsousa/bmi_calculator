import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const GenderCard({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text.toUpperCase(),
          style: TextStyle(
              color: Color(
                0xFF8D8E98,
              ),
              fontSize: 18),
        ),
      ],
    );
  }
}
