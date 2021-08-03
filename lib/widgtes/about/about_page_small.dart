import 'package:flutter/material.dart';
import 'package:resume/widgtes/about/name_small.dart';
import 'package:resume/widgtes/about/skill_progress_indicator.dart';
import 'package:resume/widgtes/about/title_small.dart';

import 'about_page_large.dart';

class AboutPageSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Container(
          padding: EdgeInsets.only(
            top: 24,
            right: 8,
            left: 8,
            bottom: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Padding(
                padding: EdgeInsets.all(16),
              ),
              SizedBox(
                height: 36,
              ),
              Text('Backend tools and technologies:'),
              SizedBox(
                height: 12,
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 250,
                  maxHeight: 300,
                  maxWidth: 350,
                ),
                child: GridView.count(
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 3,
                  children: [
                    SkillProgressIndicator('.NET', 0.5),
                    SkillProgressIndicator('MS SQL', 0.7),
                    SkillProgressIndicator('C#', 0.75),
                    SkillProgressIndicator('Azure', 0.75),
                    SkillProgressIndicator('Entity Framework', 0.75),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Frontend tools and technologies:'),
              SizedBox(
                height: 12,
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 250,
                  maxHeight: 300,
                  maxWidth: 350,
                ),
                child: GridView.count(
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 3,
                  children: [
                    SkillProgressIndicator('Flutter', 0.3),
                    SkillProgressIndicator('Typescript', 0.5),
                    SkillProgressIndicator('Vue.js', 0.8),
                    SkillProgressIndicator('Angular', 0.6),
                    SkillProgressIndicator('Javascript', 0.85),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Other knowledge:'),
              SizedBox(
                height: 24,
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 230,
                  maxWidth: 250,
                ),
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
    );
  }
}
