import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'diamond.dart';

class RotatingDiamond extends StatefulWidget {
  Color? color;

  RotatingDiamond({this.color});

  @override
  _RotatingDiamond createState() =>
      _RotatingDiamond(this.color ?? Colors.redAccent[400]!);
}

class _RotatingDiamond extends State<RotatingDiamond>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  _RotatingDiamond(this.color);

  Future<double> get size => Future<double>.value(12);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * pi / 2,
          child: child,
        );
      },
      child: Diamond(color: this.color),
    );
  }
}
