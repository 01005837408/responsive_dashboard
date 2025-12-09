// scale factor
// responsive font size
// (min , max) font size
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

double getTextResponsive(BuildContext context, {required double fontSize}) {
  double scalFactor = getScalFactor(context);
  double fontSizeResponsive = fontSize * scalFactor;
  double lowerLimit = fontSize * 0.7;
  double upperLimit = fontSize * 1.1;
  return fontSizeResponsive.clamp(lowerLimit, upperLimit);
}

double getScalFactor(BuildContext context) {
 double width = MediaQuery.of(context).size.width;
  // var dispatcher = PlatformDispatcher.instance;
  
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < 700) {
    return width / 500;
  } else if (width < 1000) {
    return width / 800;
  } else {
    return width / 1500;
  }
}
