import 'package:resume/utils/screen_sizes.dart';

class ScreenSizeHelper {
  static ScreenSizes getScreenSize(double width) {
    if (width >= 1056) {
      return ScreenSizes.Large;
    } else if (width >= 550) {
      return ScreenSizes.Medium;
    } else {
      return ScreenSizes.Small;
    }
  }

  static getLargePageSizing(double padding, double width) {
    if (width >= 1990) {
      return padding;
    } else if (width >= 1200) {
      return padding * 0.8;
    } else {
      return padding * 0.74;
    }
  }

  static getMediumPageSizing(int padding, double width) {
    if (width >= 960) {
      return padding;
    } else if (width >= 789) {
      return padding * 0.64;
    } else {
      return padding * 0.46;
    }
  }
}
