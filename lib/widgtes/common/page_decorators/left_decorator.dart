import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class LeftDecorator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 3,
        ),
        Diamond(color: Theme.of(context).highlightColor),
        Flexible(
          flex: 7,
          child: Container(
            width: 1,
            color: Theme.of(context).highlightColor,
          ),
        )
      ],
    );
  }
}
