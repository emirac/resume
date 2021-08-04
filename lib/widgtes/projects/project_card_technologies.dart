import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/common/diamond.dart';
import 'package:resume/widgtes/projects/project_card_title.dart';

class ProjectCardTechnologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 350,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        padding: EdgeInsets.all(8),
        child: Consumer<ProjectsProvider>(
          builder: (_, ProjectsProvider projects, __) => Column(
            children: [
              ProjectCardTitle('Stack'),
              Container(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    ...projects.selectedProject!.technologies
                        .map((item) => TechnologyItem(item))
                        .toList()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TechnologyItem extends StatelessWidget {
  String item;

  TechnologyItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Diamond(
          size: 8,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          this.item,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
