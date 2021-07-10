import 'package:flutter/material.dart';

class TitleSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 175,
      height: 30,
      decoration: new BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Software developer',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}