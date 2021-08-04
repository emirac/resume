import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/projects_provider.dart';

class ProjectCardImage extends StatelessWidget {
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
                child: HoverWidget(
                  onHover: (event) => {},
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        projects.selectedImage!,
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                  hoverChild: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        projects.selectedImage!,
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        child: InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () =>
                              projects.setSelectedImage(Direction.Back),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: new Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        top: 350 / 2,
                        left: 8,
                      ),
                      Positioned(
                        child: InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () =>
                              projects.setSelectedImage(Direction.Forward),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: new Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        top: 350 / 2,
                        right: 8,
                      ),
                    ],
                  ),
                ),
                // items: [
                //   ...projects.selectedProject!.images
                //       .map((d) => Image.asset(
                //             d,
                //             fit: BoxFit.cover,
                //           ))
                //       .toList()
                // ],
                // options: CarouselOptions(
                //   // height: 85,
                //   // aspectRatio: 2 / 3,
                //   viewportFraction: 1,
                //   initialPage: 0,
                //   enableInfiniteScroll: false,
                //   reverse: false,
                //   autoPlay: false,
                //   enlargeCenterPage: false,
                //   // onPageChanged: (int index, CarouselPageChangedReason reason) =>
                //   //     projects.setSelectedProject(index),
                //   scrollDirection: Axis.horizontal,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
