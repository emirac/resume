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
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: 350,
        minHeight: 350,
      ),
      child: Consumer<ProjectsProvider>(
        builder: (_, ProjectsProvider projects, __) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProjectCardInfo(),
            SizedBox(
              width: 32,
            ),
            if (projects.selectedProject?.images.isNotEmpty ?? false)
              ProjectCardImage(),
            if (projects.selectedProject?.images.isNotEmpty ?? false)
              SizedBox(
                width: 32,
              ),
            ProjectCardTechnologies(),
          ],
        ),
      ),
    );
  }
}
