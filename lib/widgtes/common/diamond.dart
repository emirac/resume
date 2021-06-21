import 'dart:math';
import 'package:flutter/material.dart';

class Diamond extends StatelessWidget {
  final Color color;

  Diamond({this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: SizedBox(
        height: 12,
        width: 12,
        child: DecoratedBox(
          decoration: BoxDecoration(color: this.color),
        ),
      ),
    );
  }
}
