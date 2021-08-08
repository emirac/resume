import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume/widgtes/common/page_divider.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height,
      ),
      child: Column(
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 450),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Feel free to contact me!',
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 2.5,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContactItem(FontAwesomeIcons.linkedinIn,
                          'https://www.linkedin.com'),
                      ContactItem(
                          FontAwesomeIcons.githubAlt, 'https://www.github.com'),
                      ContactItem(
                          FontAwesomeIcons.envelope, 'https://www.gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          PageDivider(
            color: Theme.of(context).accentColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Emilija Raciūtė',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  '\u00a9',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
              Expanded(
                child: Text(
                  '2021',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  IconData icon;
  String link;

  ContactItem(this.icon, this.link);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => {
                {html.window.open(this.link, '_blank')}
              },
              child: Tooltip(
                padding: EdgeInsets.all(4),
                verticalOffset: 35,
                message: this.link,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: FaIcon(
                      this.icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
