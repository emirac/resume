import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resume/data/projects.dart';
import 'package:resume/widgtes/projects/project_card.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    List<Project> data = projects;
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
            child: CarouselSlider(
              items: [
                ...data.map((d) => ProjectCardMinified(d.projectName)).toList()
              ],
              options: CarouselOptions(
                height: 180,
                aspectRatio: 2 / 3,
                viewportFraction: 0.15,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          ProjectCard(),
        ],
      ),
    );
  }
}
