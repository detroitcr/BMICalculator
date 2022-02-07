import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  static double deviceHeight = 0;
  static double deviceWidth = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    deviceHeight = _mediaQueryData.size.height;
    deviceWidth = _mediaQueryData.size.width;
  }
}
