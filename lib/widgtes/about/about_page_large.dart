import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/skill_progress_indicator.dart';
import 'package:resume/widgtes/about/title.dart';
import 'package:resume/widgtes/common/diamond.dart';

class AboutPageLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      constraints: BoxConstraints(minHeight: height),
      child: Column(
        children: [
          AboutDescription(),
          AboutSkills(),
        ],
      ),
    );
  }
}

class AboutDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(maxWidth: width),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            constraints: BoxConstraints(
              minWidth: 380,
              maxWidth: 400,
              maxHeight: 400,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: ScreenSizeHelper.getLargePageSizing(64, width),
                  right: ScreenSizeHelper.getLargePageSizing(125, width),
                  child: Name(),
                ),
                Positioned(
                  top: ScreenSizeHelper.getLargePageSizing(265, width),
                  right: ScreenSizeHelper.getLargePageSizing(36, width),
                  child: TitleCircle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text('Backend tools and technologies:'),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 400,
                  ),
                  child: GridView.count(
                    childAspectRatio: 12 / 11,
                    crossAxisCount:
                        ScreenSizeHelper.getLargePageGridCount(3, width),
                    children: [
                      SkillProgressIndicator('.NET', 0.5),
                      SkillProgressIndicator('MS SQL', 0.7),
                      SkillProgressIndicator('C#', 0.75),
                      SkillProgressIndicator('Azure', 0.75),
                      SkillProgressIndicator('Entity Framework', 0.75),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text('Frontend tools and technologies:'),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 400,
                  ),
                  child: GridView.count(
                    childAspectRatio: 12 / 11,
                    crossAxisCount:
                        ScreenSizeHelper.getLargePageGridCount(3, width),
                    children: [
                      SkillProgressIndicator('Flutter', 0.3),
                      SkillProgressIndicator('Typescript', 0.5),
                      SkillProgressIndicator('Vue.js', 0.8),
                      SkillProgressIndicator('Angular', 0.6),
                      SkillProgressIndicator('Javascript', 0.85),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Text('Other knowledge:'),
                SizedBox(
                  height: 24,
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 400),
                  child: Column(
                    children: [
                      SkillBulletPoint('Design patterns'),
                      SkillBulletPoint('Agile'),
                      SkillBulletPoint('Object-oriented programming'),
                      SkillBulletPoint('Test-driven development'),
                      SkillBulletPoint('CQRS'),
                      SkillBulletPoint('Clean Architecture'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillBulletPoint extends StatelessWidget {
  final String item;

  SkillBulletPoint(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, right: 8),
      child: Row(
        children: [
          Diamond(
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              this.item,
            ),
          ),
        ],
      ),
    );
  }
}
