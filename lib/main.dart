import 'package:flutter/material.dart';
import 'package:resume/pages/about_page.dart';
import 'package:resume/pages/contact_page.dart';
import 'package:resume/pages/projects_page.dart';
import 'package:resume/widgtes/common/divider.dart';
import 'package:resume/widgtes/common/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      child: Menu(),
                      top: 0,
                      left: 16,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  children: [
                    AboutPage(),
                    PageDivider(),
                    ProjectsPage(),
                    PageDivider(),
                    ContactPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
