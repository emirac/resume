import 'package:flutter/material.dart';

class TitleCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 180.0,
      height: 180.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
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
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
