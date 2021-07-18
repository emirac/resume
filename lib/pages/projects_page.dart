import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/common/page_divider.dart';
import 'package:resume/widgtes/projects/projects_page_large.dart';
import 'package:resume/widgtes/projects/projects_page_medium_small.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Widget widget;

    switch (ScreenSizeHelper.getScreenSize(width)) {
      case ScreenSizes.Large:
        widget = ProjectsPageLarge();
        break;
      case ScreenSizes.Medium:
      case ScreenSizes.Small:
        widget = ProjectsPageMediumSmall();
        break;
    }

    return Column(
      children: [
        widget,
        PageDivider(),
      ],
    );
  }
}
