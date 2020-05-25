import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static var screenData;
  static var screenWidth;
  static var screenHeight;
  static var safeAreaHorizontal;
  static var safeAreaVertical;
  static var blockWidth;
  static var blockHeight;

  static var yaziAciklama = TextStyle(
    color: SizeConfig.almostBlack,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziAciklamaBaslik = TextStyle(
    color: SizeConfig.green,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziBitkiniEkleButon = TextStyle(
    color: SizeConfig.green,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 5,
  );

  static var yaziAppbarBaslik = TextStyle(
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 5.5,
    color: SizeConfig.green,
  );

  static var yaziHint = TextStyle(
    fontFamily: "Champagne-Limousines-Bold",
    fontStyle: FontStyle.italic,
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziButon = TextStyle(
    fontSize: SizeConfig.blockWidth * 4.5,
    color: almostWhite,
    fontFamily: "Champagne-Limousines-Bold",
  );

  static var yaziWidgetIci = TextStyle(
    color: SizeConfig.almostBlack,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4,
  );

  static var yaziUserName = TextStyle(
    color: SizeConfig.green,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 5,
  );

  static var yaziProfilKucukAciklama = TextStyle(
    color: SizeConfig.almostBlack,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 3.5,
  );

  static var green = Colors.green[900];
  static var backgroundColor = Colors.grey[300];
  static var almostWhite = Colors.grey[50];
  static var almostBlack = Colors.black87;

  void init(BuildContext context) {
    screenData = MediaQuery.of(context);
    screenWidth = screenData.size.width;
    screenHeight = screenData.size.height;
    safeAreaVertical = screenData.padding.left + screenData.padding.right;
    safeAreaHorizontal = screenData.padding.top + screenData.padding.bottom;
    blockWidth = (screenWidth - safeAreaVertical) / 100;
    blockHeight = (screenHeight - safeAreaHorizontal) / 100;
  }
}
