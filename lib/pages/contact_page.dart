import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
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
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut,'),
                  SizedBox(
                    height: 64,
                  ),
                  ContactItem(FontAwesomeIcons.linkedin, 'www.linkedin.com'),
                  ContactItem(FontAwesomeIcons.github, 'www.github.com'),
                  ContactItem(FontAwesomeIcons.envelope, 'www.gmail.com'),
                ],
              ),
            ),
          ),
          PageDivider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Emilija Raciūtė \u00a9 2021'),
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
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          FaIcon(
            this.icon,
            color: Colors.red,
          ),
          SizedBox(
            width: 8,
          ),
          HoverWidget(
            onHover: (event) => {},
            child: Text(
              this.link,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.red,
              ),
            ),
            hoverChild: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => {
                  {html.window.open(this.link, 'new tab')}
                },
                child: Text(
                  this.link,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
