import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/menu_provider.dart';
import 'package:resume/utils/pages.dart';
import 'package:resume/widgtes/common/rotating_diamond.dart';

class MenuItem extends StatelessWidget {
  final Pages page;

  MenuItem({this.page = Pages.About});

  @override
  Widget build(BuildContext context) {
    String text = this.page.toString().split('.').last;

    return SizedBox(
      height: 32,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Consumer<MenuProvider>(
          builder: (_, MenuProvider menu, __) => Row(
            children: [
              SizedBox(
                height: 1,
                width: 24,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: menu.activeRoute == this.page
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).accentColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => {menu.setActiveRoute(this.page)},
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 12,
                        color: menu.activeRoute == this.page
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
              if (menu.activeRoute == this.page)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RotatingDiamond(),
                ),
              if (menu.activeRoute == this.page)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RotatingDiamond(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
