import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 250.0,
      height: 250.0,
      decoration: new BoxDecoration(
        color: Colors.red,
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
