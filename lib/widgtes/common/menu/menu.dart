import 'package:flutter/material.dart';
import 'package:resume/utils/pages.dart';
import 'package:resume/widgtes/common/menu/menu_item.dart';
import 'package:resume/widgtes/common/page_decorators/left_decorator.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: LeftDecorator(),
          ),
          Column(
            children: [
              Spacer(
                flex: 2,
              ),
              MenuItem(
                page: Pages.About,
              ),
              MenuItem(
                page: Pages.Projects,
              ),
              MenuItem(
                page: Pages.Contact,
              ),
              Spacer(flex: 20),
            ],
          )
        ],
      ),
    );
  }
}
