import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final bool isActive;

  MenuItem({this.text = '', this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            SizedBox(
              height: 1,
              width: 24,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: this.isActive ? Colors.red : Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                this.text,
                style: TextStyle(
                  fontSize: 12,
                  color: this.isActive ? Colors.red : Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Diamond(
                  color: this.isActive ? Colors.red : Colors.transparent),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Diamond(
                  color: this.isActive ? Colors.red : Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
