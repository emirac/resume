import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card_image.dart';
import 'package:resume/widgtes/projects/project_card_info.dart';
import 'package:resume/widgtes/projects/project_card_technologies.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Consumer<ProjectsProvider>(
      builder: (_, ProjectsProvider projects, __) => Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProjectCardInfo(),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 32,
              runSpacing: 32,
              children: [
                if (projects.selectedProject?.images.isNotEmpty ?? false)
                  ProjectCardImage(),
                ProjectCardTechnologies(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
