import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            Expanded(
              child: ImageCarousel(350, Icons.open_in_full),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final CarouselController _controller = CarouselController();
  final double size;
  final IconData toggleIcon;

  ImageCarousel(this.size, this.toggleIcon);

  @override
  Widget build(BuildContext context) {
    final projects = Provider.of<ProjectsProvider>(context, listen: true);
    return MouseRegion(
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
                height: this.size,
                viewportFraction: 1,
                onPageChanged: (index, reason) =>
                    projects.setSelectedImage(index)),
            carouselController: _controller,
          ),
          Positioned(
            top: 8,
            right: 8,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: InkWell(
                onTap: () => projects.toggleImagePopup(),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(0, 0, 0, 0.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    this.toggleIcon,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  projects.selectedProject!.images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8,
                    height: 8,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
          ),
        ],
      ),
    );
  }
}

class ImageEnlarged extends StatelessWidget {
  double getSize(double height, double width) {
    if (height > width) {
      return width - 32;
    } else {
      return height - 32;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Container(
              color: new Color.fromRGBO(0, 0, 0, 0.5),
            ),
          ),
          Center(
            child: SizedBox(
              height: getSize(height, width),
              width: getSize(height, width),
              child: Container(
                color: Colors.white,
                child: ImageCarousel(getSize(height, width), Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
