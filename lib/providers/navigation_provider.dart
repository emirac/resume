import 'package:flutter/material.dart';

typedef onPageChangeCallback = void Function(int);

class NavigationProvider {
  double disableUntil = -1;
  final scrollController = new ScrollController();

  onPageChangeCallback onPageChanged;

  int lastIndex = 0;

  final Map<int, double> sizes = {};

  NavigationProvider(this.onPageChanged) {
    scrollController.addListener(() {
      if (disableUntil != -1) {
        if (scrollController.offset == disableUntil) {
          disableUntil = -1;
        } else {
          return;
        }
      }
      recalcPosition();
    });
  }

  void registerWidgetChange(int index, double size) {
    sizes[index] = size;
  }

  void scrollTo(int index) {
    var offset = 0.0;
    sizes.forEach((key, value) {
      if (key < index) {
        offset += value;
      }
    });
    disableUntil = offset;
    scrollController
        .animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    )
        .then((value) {
      disableUntil = -1;
      recalcPosition();
    });
  }

  void recalcPosition() {
    var index = 0;
    var total = 0.0;
    sizes.forEach((key, value) {
      if (scrollController.offset >= total * 0.9) {
        index = key;
      }
      total += value;
    });
    if (lastIndex != index) {
      this.lastIndex = index;
      this.onPageChanged(this.lastIndex);
    }
  }
}
