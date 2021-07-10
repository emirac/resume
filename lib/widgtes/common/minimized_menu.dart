import 'package:flutter/material.dart';

class MinimizedMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () => {},
        child: new Icon(
          Icons.menu,
          color: Colors.red,
        ),
      ),
    );
  }
}
