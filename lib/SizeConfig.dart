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
    color: Colors.black87,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziAciklamaBaslik = TextStyle(
    color: Colors.green[900],
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziAppbarBaslik = TextStyle(
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 6,
    color: Colors.green[900],
  );

  static var yaziHint = TextStyle(
    fontFamily: "Champagne-Limousines-Bold",
    fontStyle: FontStyle.italic,
    fontSize: SizeConfig.blockWidth * 4.5,
  );

  static var yaziButon = TextStyle(
    fontSize: SizeConfig.blockWidth * 4.5,
    color: Colors.white,
    fontFamily: "Champagne-Limousines-Bold",
  );

  static var yaziWidgetIci = TextStyle(
    color: Colors.black87,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 4,
  );

  static var yaziUserName = TextStyle(
    color: Colors.green[900],
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 5,
  );

  static var yaziProfilKucukAciklama = TextStyle(
    color: Colors.black87,
    fontFamily: "Champagne-Limousines-Bold",
    fontSize: SizeConfig.blockWidth * 3.5,
  );

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