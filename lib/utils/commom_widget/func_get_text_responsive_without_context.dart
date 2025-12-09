// scale factor
// responsive font size
// (min , max) font size
import 'package:flutter/foundation.dart';

double getTextResponsive({required double fontSize}) {
  double scalFactor = getScalFactor();
  double fontSizeResponsive = fontSize * scalFactor;
  double lowerLimit = fontSize * 0.7;
  double upperLimit = fontSize * 1;
  return fontSizeResponsive.clamp(lowerLimit, upperLimit);
}

double getScalFactor() {
  //double width = MediaQuery.of(context).size.width;
  // this methodes get width whithout using context
  var dispatcher = PlatformDispatcher.instance;

  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < 700) {
    return width / 550;
  } else if (width < 1000) {
    return width / 800;
  } else {
    return width / 1400;
  }
}
