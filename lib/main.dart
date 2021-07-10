import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/pages/contact_page.dart';
import 'package:resume/pages/projects_page.dart';
import 'package:resume/providers/menu_provider.dart';
import 'package:resume/utils/pages.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/common/menu_large_medium.dart';
import 'package:resume/widgtes/common/menu_small.dart';
import 'package:resume/widgtes/common/page_divider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MenuProvider>(
      create: (_) => MenuProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
      ),
      home: Scaffold(
        body: MyAppPage(),
      ),
    );
  }
}

class MyAppPage extends StatelessWidget {
  void scrollTo(Pages page, ScrollController controller) {
    if (!controller.hasClients) {
      return;
    }

    switch (page) {
      case Pages.About:
        controller.animateTo(
          0,
          duration: new Duration(milliseconds: 30),
          curve: Curves.ease,
        );
        print('scrolling');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrollController = new ScrollController();
    final _data = Provider.of<MenuProvider>(context);

    _data.addListener(() {});
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        children: [
          ScreenSizeHelper.getScreenSize(width) == ScreenSizes.Small
              ? MenuSmall()
              : MenuLargeMedium(),
          Expanded(
            flex: 10,
            child: Consumer<MenuProvider>(builder: (_, MenuProvider menu, __) {
              scrollTo(menu.activeRoute, scrollController);
              return ListView(
                padding: EdgeInsets.only(
                  right: 24,
                ),
                physics: BouncingScrollPhysics(),
                controller: scrollController,
                children: [
                  AboutPage(),
                  PageDivider(),
                  ProjectsPage(),
                  PageDivider(),
                  ContactPage(),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
