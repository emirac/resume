import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Consumer<ProjectsProvider>(
      builder: (_, ProjectsProvider projects, __) => Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: width,
          constraints: BoxConstraints(
            maxWidth: 732,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...projects.selectedProject!.description
                  .map((para) => Text(
                        para,
                        style: TextStyle(color: Theme.of(context).accentColor),
                      ))
                  .toList(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProjectCardLink(
                        'Code', projects.selectedProject?.codeURL ?? ''),
                    ProjectCardLink(
                        'See live', projects.selectedProject?.demoURL ?? ''),
                  ],
                ),
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

  void _launchURL(link) async {
    await canLaunch(link) ? await launch(link) : throw 'Could not launch URL';
  }

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
              color: this.link.length > 0
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).highlightColor,
              child: Text(
                this.linkText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          onTap: () => {if (this.link.length > 0) _launchURL(this.link)},
        ),
      ),
    );
  }
}
