import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class PageDivider extends StatelessWidget {
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
              color: Colors.red,
            ),
          ),
          Diamond(),
          Expanded(
            child: Divider(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
