import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgtes/projects/project_card_title.dart';

class ProjectCardMinified extends StatelessWidget {
  String projectName;

  ProjectCardMinified(this.projectName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).highlightColor,
        borderRadius: BorderRadius.circular(90),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProjectCardTitle(this.projectName.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
