import 'package:flutter/material.dart';

class NameSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 215,
      height: 44,
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: Text(
          'EMILIJA RACIŪTĖ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
