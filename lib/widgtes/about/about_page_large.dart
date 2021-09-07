import 'package:flutter/material.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/title.dart';

class AboutPageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A software developer who is quick to learn and adapt and has a lot of perseverance, drive and creativity.',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'I have 3+ years of professional experience and also expand my knowledge and stack by developing personal projects.',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'At this point in my career, I am mostly focused on applying my existing knowledge in developing complex solutions for various problems and challenges.',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Below you can see the technologies and tools that I am familiar with and how confident I am working with them.',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}

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
            child: AboutPageText(),
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
                Text(
                  'Backend tools and technologies:',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 380,
                  ),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 3,
                    children: [...backendSkils],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Frontend tools and technologies:',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 380,
                  ),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
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
                Text(
                  'Other knowledge:',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
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
