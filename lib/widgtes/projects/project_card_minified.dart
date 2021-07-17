import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectCardMinified extends StatelessWidget {
  String projectName;

  ProjectCardMinified(this.projectName);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.projectName.toUpperCase(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
