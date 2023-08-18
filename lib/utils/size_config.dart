import 'package:flutter/material.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class SizeConfig {

  static bool get isMobile => 1.sw < 650;

  static bool get isTablet => 1.sw < 1100 && 1.sw >= 650;

  static bool get isDesktop => 1.sw >= 1100;

}



double getProportionateScreenHeight(double inputHeight,BuildContext context ) {
  double screenHeight = MediaQuery.of(context).size.height;
  return (inputHeight / 812.0) * screenHeight;
}


double getProportionateScreenWidth(double inputWidth,BuildContext context) {
  double screenWidth =MediaQuery.of(context).size.width;
  return (inputWidth / 375.0) * screenWidth;
}


double getShortSize(double inputSide, BuildContext context) {
  double screenShortSide = MediaQuery.of(context).size.shortestSide;
  return (inputSide / 375.0) * screenShortSide;
}