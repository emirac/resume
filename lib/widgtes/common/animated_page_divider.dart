import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/animated_diamond.dart';

class AnimatedPageDivider extends StatefulWidget {
  final Color color;

  AnimatedPageDivider({this.color = Colors.red});

  @override
  _AnimatedPageDivider createState() => _AnimatedPageDivider();
}

class _AnimatedPageDivider extends State<AnimatedPageDivider>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
  )..forward();

  Future<double> get width => Future<double>.value(double.infinity);

  _AnimatedPageDivider();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: FutureBuilder<double>(
                future: width,
                initialData: 1,
                builder: (context, snapshot) {
                  return AnimatedSize(
                    vsync: this,
                    duration: Duration(seconds: 1),
                    child: Container(
                      height: 1,
                      color: widget.color,
                      child: SizedBox(
                        width: snapshot.data,
                      ),
                    ),
                  );
                }),
          ),
          AnimatedDiamond(
            color: widget.color,
          ),
          Flexible(
            child: FutureBuilder<double>(
                future: width,
                initialData: 1,
                builder: (context, snapshot) {
                  return AnimatedSize(
                    vsync: this,
                    duration: Duration(seconds: 1),
                    child: Container(
                      height: 1,
                      width: snapshot.data,
                      color: widget.color,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
