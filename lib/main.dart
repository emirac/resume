import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/pages/contact_page.dart';
import 'package:resume/pages/projects_page.dart';
import 'package:resume/providers/menu_provider.dart';
import 'package:resume/providers/projects_provider.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/utils/screen_sizes.dart';
import 'package:resume/widgtes/common/menu/menu_large_medium.dart';
import 'package:resume/widgtes/common/menu/menu_small.dart';
import 'package:resume/widgtes/common/page_decorators/left_decorator.dart';
import 'package:resume/widgtes/common/page_decorators/right_decorator.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MenuProvider>(
      create: (_) => MenuProvider(),
    ),
    ChangeNotifierProvider<ProjectsProvider>(
      create: (_) => ProjectsProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.redAccent[400],
        accentColor: Colors.grey[500],
        highlightColor: Colors.grey[300],
        fontFamily: 'Quicksand',
      ),
      home: Scaffold(
        body: MyAppPage(),
      ),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _data = Provider.of<MenuProvider>(context, listen: false);

    _data.addListener(() {});
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Stack(
        children: [
          Row(
            children: [
              ScreenSizeHelper.getScreenSize(width) == ScreenSizes.Small
                  ? MenuSmall()
                  : MenuLargeMedium(),
              Expanded(
                flex: 10,
                child:
                    Consumer<MenuProvider>(builder: (_, MenuProvider menu, __) {
                  return SingleChildScrollView(
                    controller: _data.navigationController?.scrollController,
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 24,
                      ),
                      child: Column(
                        children: [
                          WidgetSizeTracker(
                            child: AboutPage(),
                            index: 0,
                          ),
                          WidgetSizeTracker(
                            child: ProjectsPage(),
                            index: 1,
                          ),
                          WidgetSizeTracker(
                            child: ContactPage(),
                            index: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
          Positioned(child: RightDecorator(), right: 0)
        ],
      ),
    );
  }
}

class WidgetSizeTracker extends StatelessWidget {
  final Widget child;
  final int index;

  const WidgetSizeTracker({
    Key? key,
    required this.child,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _data = Provider.of<MenuProvider>(context, listen: false);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _data.navigationController
          ?.registerWidgetChange(index, context.size?.height ?? 0);
    });
    return child;
  }
}
