import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillProgressIndicator extends StatelessWidget {
  SkillProgressIndicator(this.item, this.score);

  final String item;
  final double score;
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 90.0,
      lineWidth: 2.0,
      percent: score,
      backgroundColor: Theme.of(context).highlightColor,
      center: new Text(
        item,
        textAlign: TextAlign.center,
      ),
      progressColor: Theme.of(context).primaryColor,
    );
  }
}
