import 'dart:math';
import 'package:flutter/material.dart';

class Diamond extends StatelessWidget {
  final Color color;
  final double size;

  Diamond({this.color = Colors.red, this.size = 12});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: SizedBox(
        height: this.size,
        width: this.size,
        child: DecoratedBox(
          decoration: BoxDecoration(color: this.color),
        ),
      ),
    );
  }
}
