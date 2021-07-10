import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/widgtes/about/name_small.dart';
import 'package:resume/widgtes/about/skill_card.dart';
import 'package:resume/widgtes/about/title_small.dart';
import 'package:resume/widgtes/common/animated_page_divider.dart';

class AboutPageSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
            right: 8,
            left: 8,
          ),
          child: NameSmall(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TitleSmall(),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 24,
            right: 8,
            left: 8,
            bottom: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
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
              Padding(
                padding: EdgeInsets.all(16),
              ),
              AnimatedPageDivider(
                color: Colors.grey,
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
