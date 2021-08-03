import 'package:flutter/material.dart';

class TitleCircle extends StatelessWidget {
  final double size;

  TitleCircle(this.size);
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: this.size,
      height: this.size,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).accentColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Software developer',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
