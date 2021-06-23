import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: double.infinity,
      ),
      child: Center(
        child: Text('projects page'),
      ),
    );
  }
}
