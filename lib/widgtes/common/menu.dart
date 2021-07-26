import 'package:flutter/material.dart';
import 'package:resume/utils/pages.dart';
import 'package:resume/widgtes/common/menu_item.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: height,
              width: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
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
                  page: Pages.About,
                ),
              ),
              Expanded(
                child: MenuItem(
                  page: Pages.Projects,
                ),
              ),
              Expanded(
                child: MenuItem(
                  page: Pages.Contact,
                ),
              ),
              Spacer(flex: 22),
            ],
          )
        ],
      ),
    );
  }
}
