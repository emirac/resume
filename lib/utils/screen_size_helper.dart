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
}
