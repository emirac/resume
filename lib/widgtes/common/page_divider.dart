import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class PageDivider extends StatelessWidget {
  final Color color;

  PageDivider({this.color = Colors.red});
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
              color: this.color,
            ),
          ),
          Diamond(
            color: this.color,
          ),
          Expanded(
            child: Divider(
              color: this.color,
            ),
          ),
        ],
      ),
    );
  }
}
