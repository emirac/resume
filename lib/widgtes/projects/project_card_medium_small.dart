import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card_image.dart';
import 'package:resume/widgtes/projects/project_card_info.dart';
import 'package:resume/widgtes/projects/project_card_technologies.dart';

class ProjectCardMediumSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProjectsProvider>(
      builder: (_, ProjectsProvider projects, __) => Column(
        children: [
          Wrap(
            spacing: 16,
            runSpacing: 16,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              ProjectCardInfo(),
              if (projects.selectedProject?.images.isNotEmpty ?? false)
                ProjectCardImage(),
              ProjectCardTechnologies(),
            ],
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}