import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card_minified.dart';

class ProjectsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProjectsProvider>(
      builder: (_, ProjectsProvider projects, __) => MouseRegion(
        cursor: SystemMouseCursors.grab,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 12,
            left: 12,
            top: 32,
            bottom: 32,
          ),
          child: CarouselSlider(
            items: [
              ...projects.projects
                  .map((d) => ProjectCardMinified(d.projectName))
                  .toList()
            ],
            options: CarouselOptions(
              height: 180,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (int index, CarouselPageChangedReason reason) =>
                  projects.setSelectedProject(index),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectsCarouselIndicator extends StatelessWidget {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProjectsProvider>(
      builder: (_, ProjectsProvider projects, __) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: projects.projects.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (projects.getSelectedProjectIndex() == entry.key
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).highlightColor),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
