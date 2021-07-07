import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';

class TitleCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return new Container(
      width: ScreenSizeHelper.getLargePageSizing2(215, width),
      height: ScreenSizeHelper.getLargePageSizing2(215, width),
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
