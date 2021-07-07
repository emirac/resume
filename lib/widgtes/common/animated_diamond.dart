import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedDiamond extends StatefulWidget {
  final Color color;

  AnimatedDiamond({this.color = Colors.red});

  @override
  _AnimatedDiamond createState() => _AnimatedDiamond();
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

  Future<double> get size => Future<double>.value(12);

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
