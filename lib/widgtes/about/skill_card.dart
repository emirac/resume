import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class SkillCard extends StatelessWidget {
  SkillCard(this.item, this.score);

  final String item;
  final int score;

  List<Widget> getDiamonds() {
    List<Widget> res = [];
    for (int i = 0; i < 10; i++) {
      if (i < this.score) {
        res.add(Padding(
          padding: const EdgeInsets.all(4),
          child: Diamond(
            color: Colors.redAccent[400],
          ),
        ));
      } else {
        res.add(Padding(
          padding: const EdgeInsets.all(4),
          child: Diamond(
            color: Colors.grey[300],
          ),
        ));
      }
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text(item),
          ),
          ...getDiamonds(),
        ],
      ),
    );
  }
}
