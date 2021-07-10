import 'package:flutter/material.dart';

import 'menu.dart';

class MenuLargeMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 160,
        maxWidth: 160,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Menu(),
            top: 0,
            left: 24,
          ),
        ],
      ),
    );
  }
}
