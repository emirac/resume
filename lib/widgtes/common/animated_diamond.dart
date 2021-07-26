import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedDiamond extends StatefulWidget {
  Color? color;

  AnimatedDiamond({this.color});

  @override
  _AnimatedDiamond createState() =>
      _AnimatedDiamond(this.color ?? Colors.redAccent[400]!);
}

class _AnimatedDiamond extends State<AnimatedDiamond>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 800),
    vsync: this,
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  _AnimatedDiamond(this.color);

  Future<double> get size => Future<double>.value(12);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: FutureBuilder<double>(
          future: size,
          initialData: 1,
          builder: (context, snapshot) {
            return FadeTransition(
              opacity: _animation,
              child: SizedBox(
                height: snapshot.data,
                width: snapshot.data,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: widget.color),
                ),
              ),
            );
          }),
    );
  }
}
