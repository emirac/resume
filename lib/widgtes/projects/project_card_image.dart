import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';

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
          child: Consumer<ProjectsProvider>(
            builder: (_, ProjectsProvider projects, __) => CarouselSlider(
              items: [
                ...projects.selectedProject!.images
                    .map((d) => Image.asset(
                          d,
                          fit: BoxFit.cover,
                        ))
                    .toList()
              ],
              options: CarouselOptions(
                // height: 85,
                // aspectRatio: 2 / 3,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: false,
                // onPageChanged: (int index, CarouselPageChangedReason reason) =>
                //     projects.setSelectedProject(index),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
