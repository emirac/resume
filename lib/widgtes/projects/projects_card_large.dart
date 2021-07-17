import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card_image.dart';
import 'package:resume/widgtes/projects/project_card_info.dart';
import 'package:resume/widgtes/projects/project_card_technologies.dart';

class ProjectCardLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: width,
        maxWidth: width,
        maxHeight: 350,
      ),
      child: Consumer<ProjectsProvider>(
        builder: (_, ProjectsProvider projects, __) => Container(
          height: 350,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(child: ProjectCardInfo()),
              SizedBox(
                width: 32,
              ),
              if (projects.selectedProject?.images.isNotEmpty ?? false)
                Flexible(child: ProjectCardImage()),
              if (projects.selectedProject?.images.isNotEmpty ?? false)
                SizedBox(
                  width: 32,
                ),
              Flexible(child: ProjectCardTechnologies()),
            ],
          ),
        ),
      ),
    );
  }
}
