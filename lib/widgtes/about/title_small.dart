import 'package:flutter/material.dart';

class TitleSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 175,
      height: 30,
      decoration: new BoxDecoration(
        border: Border.all(color: Theme.of(context).accentColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          'Software developer',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
