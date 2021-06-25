import 'package:resume/utils/screen_sizes.dart';

class ScreenSizeHelper {
  static ScreenSizes getScreenSize(double width) {
    if (width >= 775) {
      return ScreenSizes.Large;
    } else if (width >= 400) {
      return ScreenSizes.Medium;
    } else {
      return ScreenSizes.Small;
    }
  }

  static getLargePageSizing(int padding, double width) {
    if (width >= 1200) {
      return padding;
    } else if (width >= 1024) {
      return padding * 0.60;
    } else {
      return padding * 0.38;
    }
  }
}
