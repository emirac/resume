import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/about/about_page_large.dart';
import 'package:resume/widgtes/about/about_page_medium.dart';
import 'package:resume/widgtes/about/about_page_small.dart';
import 'package:resume/widgtes/about/skill_bullet_point.dart';
import 'package:resume/widgtes/about/skill_progress_indicator.dart';
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

var backendSkils = [
  SkillProgressIndicator('.NET', 0.5),
  SkillProgressIndicator('MS SQL', 0.7),
  SkillProgressIndicator('C#', 0.75),
  SkillProgressIndicator('Azure', 0.75),
  SkillProgressIndicator('Entity Framework', 0.75),
];

var frontendSkills = [
  SkillProgressIndicator('Flutter', 0.3),
  SkillProgressIndicator('Typescript', 0.5),
  SkillProgressIndicator('Vue.js', 0.8),
  SkillProgressIndicator('Angular', 0.6),
  SkillProgressIndicator('Javascript', 0.85),
];

var otherSkills = [
  SkillBulletPoint('Design patterns'),
  SkillBulletPoint('Agile'),
  SkillBulletPoint('Object-oriented programming'),
  SkillBulletPoint('Test-driven development'),
  SkillBulletPoint('CQRS'),
  SkillBulletPoint('Clean Architecture'),
];
