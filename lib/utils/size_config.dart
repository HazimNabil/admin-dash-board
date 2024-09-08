import 'package:flutter/material.dart';

class SizeConfig {
  static const kTabletBreakpoint = 800;
  static const kDesktopBreakpoint = 1200;

  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    var scaleFactor = getScaleFactor(context);
    var responsiveFontSize = fontSize * scaleFactor;

    var lowerLimit = fontSize * .80;
    var upperLimit = fontSize * 1.20;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.kTabletBreakpoint) {
      return width / 750;
    } else if (width < SizeConfig.kDesktopBreakpoint) {
      return width / 1150;
    } else {
      return width / 1920;
    }
  }
}
