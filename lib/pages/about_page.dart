import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/about/about_page_large.dart';
import 'package:resume/widgtes/about/about_page_medium.dart';
import 'package:resume/widgtes/about/about_page_small.dart';
import 'package:resume/widgtes/common/page_divider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Widget widget;

    switch (ScreenSizeHelper.getScreenSize(width)) {
      case ScreenSizes.Large:
        widget = AboutPageLarge();
        break;
      case ScreenSizes.Medium:
        widget = AboutPageMedium();
        break;
      case ScreenSizes.Small:
        widget = AboutPageSmall();
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
