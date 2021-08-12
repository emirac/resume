import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/providers/menu_provider.dart';
import 'package:resume/utils/pages.dart';

import '../diamond.dart';

class MinimizedMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Consumer<MenuProvider>(
          builder: (_, MenuProvider menu, __) => menu.showMenu
              ? FullScreenMenu()
              : Positioned(left: 8, child: MenuIcon()),
        ),
      ],
    );
  }
}

class MenuIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Consumer<MenuProvider>(
        builder: (_, MenuProvider menu, __) => InkWell(
          onTap: () => menu.toggleMenu(),
          child: new Icon(
            Icons.menu,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class FullScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FullScreenMenuItem(page: Pages.About),
              FullScreenMenuItem(page: Pages.Projects),
              FullScreenMenuItem(page: Pages.Contact),
            ],
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Consumer<MenuProvider>(
              builder: (_, MenuProvider menu, __) => InkWell(
                onTap: () => menu.toggleMenu(),
                child: Icon(
                  Icons.close,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FullScreenMenuItem extends StatelessWidget {
  final Pages page;

  FullScreenMenuItem({this.page = Pages.About});
  @override
  Widget build(BuildContext context) {
    String text = this.page.toString().split('.').last;

    return Consumer<MenuProvider>(
      builder: (_, MenuProvider menu, __) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (menu.activeRoute == this.page)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Diamond(),
            ),
          if (menu.activeRoute == this.page)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Diamond(),
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
              child: Diamond(),
            ),
          if (menu.activeRoute == this.page)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Diamond(),
            ),
        ],
      ),
    );
  }
}
