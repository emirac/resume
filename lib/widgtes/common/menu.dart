import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/menu_item.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: height,
              width: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                child: MenuItem(
                  text: 'About',
                  isActive: true,
                ),
              ),
              Expanded(
                child: MenuItem(
                  text: 'Projects',
                  isActive: false,
                ),
              ),
              Expanded(
                child: MenuItem(
                  text: 'Contact',
                  isActive: false,
                ),
              ),
              Spacer(flex: 22),
            ],
          )
          // Expanded(
          //   child: VerticalDivider(
          //     color: Colors.red,
          //   ),
          //   flex: 12,
          // ),
        ],
      ),
    );
  }
}
