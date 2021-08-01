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
        Container(
          height: height,
          padding: EdgeInsets.only(left: 2),
          child: Column(
            children: [
              Spacer(),
              AnimatedDiamond(
                color: Theme.of(context).primaryColor,
              ),
              Spacer(
                flex: 4,
              ),
              Diamond(
                color: Theme.of(context).accentColor,
              ),
              Diamond(
                color: Theme.of(context).accentColor,
              ),
              Diamond(
                color: Theme.of(context).accentColor,
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
