import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class PageDivider extends StatelessWidget {
  final Color? color;
  final Color defaultColor = Colors.redAccent[400]!;

  PageDivider({this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: this.color ?? defaultColor,
            ),
          ),
          Diamond(
            color: this.color ?? defaultColor,
          ),
          Expanded(
            child: Divider(
              color: this.color ?? defaultColor,
            ),
          ),
        ],
      ),
    );
  }
}
