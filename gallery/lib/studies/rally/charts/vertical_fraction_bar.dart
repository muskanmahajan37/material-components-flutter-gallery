import 'package:flutter/material.dart';

class VerticalFractionBar extends StatelessWidget {
  const VerticalFractionBar({this.color, this.fraction});

  final Color color;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 4,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (1 - fraction) * 32,
            child: Container(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: fraction * 32,
            child: Container(color: color),
          ),
        ],
      ),
    );
  }
}