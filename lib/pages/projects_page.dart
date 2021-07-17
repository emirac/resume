import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/projects/projects_page_large.dart';
import 'package:resume/widgtes/projects/projects_page_medium_small.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    switch (ScreenSizeHelper.getScreenSize(width)) {
      case ScreenSizes.Large:
        return ProjectsPageLarge();
      case ScreenSizes.Medium:
      case ScreenSizes.Small:
        return ProjectsPageMediumSmall();
    }
  }
}
