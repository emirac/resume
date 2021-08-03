import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';

class TitleCircle extends StatelessWidget {
  final double size;

  TitleCircle(this.size);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return new Container(
      width: this.size, // ScreenSizeHelper.getLargePageSizing(215, width),
      height: this.size, // ScreenSizeHelper.getLargePageSizing(215, width),
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
