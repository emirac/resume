import 'package:flutter/material.dart';
import 'package:resume/widgtes/common/diamond.dart';

class Name extends StatelessWidget {
  final double size;

  Name(this.size);
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: this.size,
      height: this.size,
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
