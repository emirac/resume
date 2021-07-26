import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/skill_card.dart';
import 'package:resume/widgtes/about/title.dart';
import 'package:resume/widgtes/common/animated_page_divider.dart';

class AboutPageLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(
                ScreenSizeHelper.getLargePageSizing(30, width),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(
                        ScreenSizeHelper.getLargePageSizing(46, width),
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
                  ),
                  AnimatedPageDivider(
                    color: Theme.of(context).accentColor,
                  ),
                  Flexible(
                    // flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(
                        ScreenSizeHelper.getLargePageSizing(50, width),
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
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: height,
              child: Stack(
                children: [
                  Positioned(
                    top: ScreenSizeHelper.getLargePageSizing2(64, width),
                    right: ScreenSizeHelper.getLargePageSizing2(125, width),
                    child: Name(),
                  ),
                  Positioned(
                    top: ScreenSizeHelper.getLargePageSizing2(265, width),
                    right: ScreenSizeHelper.getLargePageSizing2(36, width),
                    child: TitleCircle(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
