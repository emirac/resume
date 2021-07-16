import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/widgtes/projects/project_card.dart';
import 'package:resume/widgtes/projects/project_minified_card.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: double.infinity,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 64,
              bottom: 120,
            ),
            child: Consumer<ProjectsProvider>(
              builder: (_, ProjectsProvider projects, __) => CarouselSlider(
                items: [
                  ...projects.projects
                      .map((d) => ProjectCardMinified(d.projectName))
                      .toList()
                ],
                options: CarouselOptions(
                  height: 85,
                  aspectRatio: 2 / 3,
                  viewportFraction: 0.15,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  onPageChanged:
                      (int index, CarouselPageChangedReason reason) =>
                          projects.setSelectedProject(index),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
          ProjectCard(),
        ],
      ),
    );
  }
}
