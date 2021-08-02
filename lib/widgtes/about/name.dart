import 'package:flutter/material.dart';
import 'package:resume/utils/screen_size_helper.dart';
import 'package:resume/widgtes/common/diamond.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return new Container(
      width: ScreenSizeHelper.getLargePageSizing(280, width),
      height: ScreenSizeHelper.getLargePageSizing(280, width),
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'EMILIJA RACIŪTĖ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Diamond(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Diamond(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Diamond(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
