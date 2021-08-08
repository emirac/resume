import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class SkillBulletPoint extends StatelessWidget {
  final String item;

  SkillBulletPoint(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, right: 8),
      child: Row(
        children: [
          Diamond(
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              this.item,
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
