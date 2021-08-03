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
  SkillProgressIndicator('.NET', 0.8),
  SkillProgressIndicator('MS SQL', 0.85),
  SkillProgressIndicator('C#', 0.8),
  SkillProgressIndicator('Azure', 0.55),
  SkillProgressIndicator('Entity Framework', 0.85),
];

var frontendSkills = [
  SkillProgressIndicator('Flutter', 0.25),
  SkillProgressIndicator('Typescript', 0.9),
  SkillProgressIndicator('Vue.js', 0.85),
  SkillProgressIndicator('Angular', 0.5),
  SkillProgressIndicator('Javascript', 0.9),
];

var otherSkills = [
  SkillBulletPoint('Design patterns'),
  SkillBulletPoint('Agile'),
  SkillBulletPoint('Object-oriented programming'),
  SkillBulletPoint('Test-driven development'),
  SkillBulletPoint('CQRS'),
  SkillBulletPoint('Clean Architecture'),
];
