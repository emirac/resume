import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/about/about_page_large.dart';
import 'package:resume/widgtes/about/about_page_medium.dart';
import 'package:resume/widgtes/about/name.dart';
import 'package:resume/widgtes/about/skill_card.dart';
import 'package:resume/widgtes/about/title.dart';
import 'package:resume/widgtes/common/page_divider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    switch (ScreenSizeHelper.getScreenSize(width)) {
      case ScreenSizes.Large:
        return AboutPageLarge();
      case ScreenSizes.Medium:
        return AboutPageMedium();
      case ScreenSizes.Small:
        return Container();
      default:
        return Container();
    }
  }
  // @override
  // Widget build(BuildContext context) {
  //   double height = MediaQuery.of(context).size.height;
  //   return ConstrainedBox(
  //     constraints: BoxConstraints(
  //       minHeight: height,
  //       maxHeight: double.infinity,
  //     ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Expanded(
  //           flex: 3,
  //           child: Padding(
  //             padding: const EdgeInsets.all(32),
  //             child: Column(
  //               children: [
  //                 Text(
  //                     'A Front-End developer with a growing interest for Back-End development.\nI started my journey in the software development world as a Front-End developer. However, during my working experience, I had opportunities to touch some Back-End and even some DevOps, which sparked my curiosity and determination to grow my skills beyond Front-End.\nSo as I continue to deepen my knowledge in JavaScript, I am also practising my Back-End skills with a goal of a Full-Stack developer in mind.'),
  //                 PageDivider(
  //                   color: Colors.grey,
  //                 ),
  //                 Column(
  //                   children: [
  //                     SkillCard('Flutter', 3),
  //                     SkillCard('.NET', 5),
  //                     SkillCard('Vue.js', 8),
  //                     SkillCard('SQL', 7),
  //                     SkillCard('Angular', 6),
  //                     SkillCard('C#', 6),
  //                     SkillCard('Javascript', 8),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Column(
  //             children: [
  //               Name(),
  //               TitleCircle(),
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
