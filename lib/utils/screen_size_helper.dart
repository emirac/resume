import 'package:resume/utils/screen_sizes.dart';

class ScreenSizeHelper {
  static ScreenSizes getScreenSize(double width) {
    if (width >= 1024) {
      return ScreenSizes.Large;
    } else if (width >= 425) {
      return ScreenSizes.Medium;
    } else {
      return ScreenSizes.Small;
    }
  }

  static getLargePageSizing(int padding, double width) {
    if (width >= 1990) {
      return padding;
    } else if (width >= 1100) {
      return padding * 0.60;
    } else {
      return padding * 0.56;
    }
  }

  static getLargePageSizing2(int padding, double width) {
    if (width >= 1990) {
      return padding;
    } else if (width >= 1100) {
      return padding * 0.83;
    } else {
      return padding * 0.75;
    }
  }
}
