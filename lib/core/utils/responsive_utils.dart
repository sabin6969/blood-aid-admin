import 'package:flutter/material.dart';
import 'dart:math' as math;

class ResponsiveUtil {
  // Screen width breakpoints
  static const double maxDesktopWidth = 1920.0;
  static const double standardDesktopWidth = 1024.0;
  static const double tabletBreakpoint = 768.0;
  static const double mobileBreakpoint = 375.0;

  // Scaling factors for different screen sizes
  static const double maxDesktopScale = 1.2;
  static const double desktopScale = 1.1;
  static const double tabletScale = 1.05;
  static const double mobileScale = 0.9;

  static double scaleSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double pixelDensity = MediaQuery.devicePixelRatioOf(context);
    double scaleFactor;

    if (screenWidth >= maxDesktopWidth) {
      scaleFactor = (screenWidth / maxDesktopWidth) * maxDesktopScale;
    } else if (screenWidth >= standardDesktopWidth) {
      scaleFactor = (screenWidth / maxDesktopWidth) * desktopScale;
    } else if (screenWidth >= tabletBreakpoint) {
      scaleFactor = (screenWidth / standardDesktopWidth) * tabletScale;
    } else {
      scaleFactor = (screenWidth / mobileBreakpoint) * mobileScale;
    }

    // Ensuring the scale remains within a reasonable range
    scaleFactor = scaleFactor.clamp(0.8, 1.4);

    // Final size calculation with pixel density adjustment
    return math.max((baseSize * scaleFactor),
        (pixelDensity > 2 ? pixelDensity * 0.75 : 8.0));
  }
}
