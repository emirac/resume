import 'package:flutter/material.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/title.dart';

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
                  top: 64,
                  right: 125,
                  child: Name(230),
                ),
                Positioned(
                  top: 225,
                  right: 36,
                  child: TitleCircle(175),
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
      child: Container(
        width: width,
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text('Backend tools and technologies:'),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 380,
                  ),
                  child: GridView.count(
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 3,
                    children: [...backendSkils],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text('Frontend tools and technologies:'),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 380,
                  ),
                  child: GridView.count(
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 3,
                    children: [...frontendSkills],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Text('Other knowledge:'),
                SizedBox(
                  height: 24,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 350,
                  ),
                  child: Column(
                    children: [...otherSkills],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
