import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/common/diamond.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardInfo(),
          ProjectCardImage(),
          ProjectCardTechnologies(),
        ],
      ),
    );
  }
}

class ProjectCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: EdgeInsets.all(8),
      child: SizedBox(
        width: 350,
        child: Consumer<ProjectsProvider>(
          builder: (_, ProjectsProvider projects, __) => Column(
            children: [
              ProjectCardTitle(projects.selectedProject?.projectName ?? ''),
              Expanded(
                child: Text(
                  projects.selectedProject?.description ?? '',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ProjectCardLink(
                      'Code', projects.selectedProject?.codeURL ?? ''),
                  ProjectCardLink(
                      'See live', projects.selectedProject?.demoURL ?? ''),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Center(
          child: Icon(Icons.image),
        ),
      ),
    );
  }
}

class ProjectCardTechnologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: EdgeInsets.all(8),
        child: Consumer<ProjectsProvider>(
          builder: (_, ProjectsProvider projects, __) => Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

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

class _HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.lineTo(size.height / 2, 0);
    path.lineTo(size.width - size.height / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - size.height / 2, size.height);
    path.lineTo(size.height / 2, size.height);
    path.lineTo(0, size.height / 2);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ProjectCardLink extends StatelessWidget {
  final String linkText;
  final String link;

  ProjectCardLink(this.linkText, this.link);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 75,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: InkWell(
          child: ClipPath(
            clipper: _HexagonClipper(),
            child: Container(
              padding: EdgeInsets.only(
                top: 4,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              color: Colors.white,
              child: Text(
                this.linkText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          onTap: () => html.window.open(this.link, 'new tab'),
        ),
      ),
    );
  }
}

class ProjectCardMinified extends StatelessWidget {
  String projectName;

  ProjectCardMinified(this.projectName);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: ProjectCardTitle(this.projectName),
      ),
    );
  }
}
