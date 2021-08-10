import 'package:flutter/material.dart';
import 'minimized_menu.dart';

class MenuSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          MinimizedMenu(),
        ],
      ),
    );
  }
}
