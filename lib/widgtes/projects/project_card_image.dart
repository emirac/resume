import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';

class ProjectCardImage extends StatelessWidget {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 280,
        maxWidth: 350,
        maxHeight: 350,
        minHeight: 280,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).highlightColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Consumer<ProjectsProvider>(
              builder: (_, ProjectsProvider projects, __) => Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.grab,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CarouselSlider(
                        items: projects.selectedProject!.images
                            .map(
                              (image) => Image.asset(
                                image,
                                fit: BoxFit.fitHeight,
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                            enlargeCenterPage: false,
                            height: 350,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) =>
                                projects.setSelectedImage(index)),
                        carouselController: _controller,
                      ),
                      Positioned(
                        bottom: 8,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: projects.selectedProject!.images
                              .asMap()
                              .entries
                              .map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (projects.selectImageIndex == entry.key
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).highlightColor),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
