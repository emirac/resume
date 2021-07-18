import 'package:flutter/material.dart';

typedef onPageChangeCallback = void Function(int);

class NavigationProvider {
  final scrollController = new ScrollController();

  onPageChangeCallback onPageChanged;

  int lastIndex = 0;

  final Map<int, double> sizes = {};

  NavigationProvider(this.onPageChanged) {
    scrollController.addListener(() {
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

    scrollController.animateTo(offset,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
