import 'package:flutter/material.dart';
import 'package:resume/utils/pages.dart';

class MenuProvider extends ChangeNotifier {
  MenuProvider();

  Pages activeRoute = Pages.About;

  void setActiveRoute(Pages route) {
    this.activeRoute = route;
    this.notifyListeners();
  }
}
