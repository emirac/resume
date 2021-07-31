import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/animated_diamond.dart';
import 'package:resume/widgtes/common/diamond.dart';

class RightDecorator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36, left: 8),
          child: Container(
            width: 1,
            height: height,
            color: Theme.of(context).highlightColor,
          ),
        ),
        Positioned(
          child: AnimatedDiamond(color: Theme.of(context).primaryColor),
          top: 150,
          right: 30,
        ),
        Positioned(
          child: Diamond(
            color: Theme.of(context).accentColor,
          ),
          top: 720,
          right: 30,
        ),
        Positioned(
          child: Diamond(
            color: Theme.of(context).accentColor,
          ),
          top: 732,
          right: 30,
        ),
        Positioned(
          child: Diamond(
            color: Theme.of(context).accentColor,
          ),
          top: 744,
          right: 30,
        )
      ],
    );
  }
}
