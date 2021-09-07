import 'package:flutter/material.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/widgtes/about/about_page_large.dart';
import 'package:resume/widgtes/about/name_small.dart';
import 'package:resume/widgtes/about/title_small.dart';

class AboutPageSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
            ),
            child: NameSmall(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TitleSmall(),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AboutPageText(),
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
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 3,
                    children: [...backendSkils],
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
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 3,
                    children: [...frontendSkills],
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
                    children: [...otherSkills],
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
