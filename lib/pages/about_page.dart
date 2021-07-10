import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/about/about_page_large.dart';
import 'package:resume/widgtes/about/about_page_medium.dart';
import 'package:resume/widgtes/about/about_page_small.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    switch (ScreenSizeHelper.getScreenSize(width)) {
      case ScreenSizes.Large:
        return AboutPageLarge();
      case ScreenSizes.Medium:
        return AboutPageMedium();
      case ScreenSizes.Small:
        return AboutPageSmall();
    }
  }
}
