import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/page_divider.dart';
import 'package:resume/widgtes/projects/projects_card.dart';
import 'package:resume/widgtes/projects/projects_carousel.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: height,
          ),
          child: Column(
            children: [
              ProjectsCarousel(),
              ProjectsCarouselIndicator(),
              ProjectCard(),
            ],
          ),
        ),
        PageDivider(),
      ],
    );
  }
}
