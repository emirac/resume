import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class ProjectCardTitle extends StatelessWidget {
  String title;

  ProjectCardTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Diamond(size: 8),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            this.title.toUpperCase(),
            style: TextStyle(
              color: Colors.red,
              fontSize: 14,
            ),
          ),
        ),
        Diamond(size: 8),
      ],
    );
  }
}
