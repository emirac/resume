import 'package:flutter/material.dart';
import 'package:resume/providers/navigation_provider.dart';
import 'package:resume/utils/pages.dart';

class MenuProvider extends ChangeNotifier {
  NavigationProvider? navigationController;

  Pages activeRoute = Pages.About;

  MenuProvider() {
    this.navigationController = NavigationProvider(this.pageChanged);
  }

  void setActiveRoute(Pages route) {
    switch (route) {
      case Pages.About:
        navigationController?.scrollTo(0);
        break;
      case Pages.Projects:
        navigationController?.scrollTo(1);
        break;
      case Pages.Contact:
        navigationController?.scrollTo(2);
        break;
      default:
        throw new Exception('Invalid page');
    }

    this.activeRoute = route;
    this.notifyListeners();
  }

  void pageChanged(int index) {
    if (index == 0) {
      this.activeRoute = Pages.About;
    } else if (index == 1) {
      this.activeRoute = Pages.Projects;
    } else if (index == 2) {
      this.activeRoute = Pages.Contact;
    } else {
      throw new Exception('Invalid page');
    }
    notifyListeners();
  }
}
