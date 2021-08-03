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
        // maxHeight: 350,
      ),
      child: Consumer<ProjectsProvider>(
        builder: (_, ProjectsProvider projects, __) => Container(
          width: width,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 24,
            children: [
              Container(
                constraints: BoxConstraints(minWidth: 350),
                child: ProjectCardInfo(),
              ),
              SizedBox(
                width: 32,
              ),
              Wrap(
                runSpacing: 32,
                children: [
                  if (projects.selectedProject?.images.isNotEmpty ?? false)
                    ProjectCardImage(),
                  if (projects.selectedProject?.images.isNotEmpty ?? false)
                    SizedBox(
                      width: 36,
                    ),
                  ProjectCardTechnologies(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
