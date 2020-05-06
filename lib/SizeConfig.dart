import 'package:flutter/widgets.dart';

class SizeConfig {
  static var screenData;
  static var screenWidth;
  static var screenHeight;
  static var safeAreaHorizontal;
  static var safeAreaVertical;
  static var blockWidth;
  static var blockHeight;

  void init(BuildContext context) {

    screenData = MediaQuery.of(context);
    screenWidth = screenData.size.width;
    screenHeight = screenData.size.height;
    safeAreaVertical = screenData.padding.left + screenData.padding.right;
    safeAreaHorizontal = screenData.padding.top + screenData.padding.bottom;
    blockWidth = (screenWidth - safeAreaVertical)/100;
    blockHeight = (screenHeight - safeAreaHorizontal)/100;

  }

}