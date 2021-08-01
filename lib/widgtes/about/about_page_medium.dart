import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/skill_card.dart';
import 'package:resume/widgtes/about/title.dart';
import 'package:resume/widgtes/common/animated_page_divider.dart';

class AboutPageMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 325,
          child: Stack(
            children: [
              Positioned(
                top: 36,
                right: 132,
                child: Name(),
              ),
              Positioned(
                top: 160,
                right: 40,
                child: TitleCircle(),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(
            ScreenSizeHelper.getMediumPageSizing(18, width),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  ScreenSizeHelper.getMediumPageSizing(36, width),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                        'A Front-End developer with a growing interest for Back-End development.'),
                    SizedBox(height: 18),
                    Text(
                        'I started my journey in the software development world as a Front-End developer. However, during my working experience, I had opportunities to touch some Back-End and even some DevOps, which sparked my curiosity and determination to grow my skills beyond Front-End.'),
                    SizedBox(height: 18),
                    Text(
                        'So as I continue to deepen my knowledge in JavaScript, I am also practising my Back-End skills with a goal of a Full-Stack developer in mind.'),
                    SizedBox(height: 18),
                    Text(
                        'Below you can see the technologies and tools that I am familiar with and how confident I am working with them.'),
                  ],
                ),
              ),
              AnimatedPageDivider(
                color: Theme.of(context).accentColor,
              ),
              Padding(
                padding: EdgeInsets.all(
                  ScreenSizeHelper.getMediumPageSizing(42, width),
                ),
                child: Column(
                  children: [
                    SkillCard('Flutter', 3),
                    SkillCard('.NET', 5),
                    SkillCard('Vue.js', 8),
                    SkillCard('SQL', 7),
                    SkillCard('Angular', 6),
                    SkillCard('C#', 6),
                    SkillCard('Javascript', 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
