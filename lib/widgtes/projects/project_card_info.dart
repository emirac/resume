import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card_title.dart';

class ProjectCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 350,
      width: 350,
      padding: EdgeInsets.all(8),
      child: SizedBox(
        height: 350,
        width: 350,
        child: Consumer<ProjectsProvider>(
          builder: (_, ProjectsProvider projects, __) => Column(
            children: [
              ProjectCardTitle(projects.selectedProject?.projectName ?? ''),
              Expanded(
                child: Text(
                  projects.selectedProject?.description ?? '',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
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
          mouseCursor: this.link.length == 0
              ? SystemMouseCursors.forbidden
              : SystemMouseCursors.click,
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
                  color: this.link.length > 0
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          onTap: () => {
            if (this.link.length > 0) {html.window.open(this.link, 'new tab')}
          },
        ),
      ),
    );
  }
}
