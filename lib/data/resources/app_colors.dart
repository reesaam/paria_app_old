import 'package:flutter/material.dart';

class AppColors {

  ///Basics
  static Color get transparent => Colors.transparent;
  static Color get appBackground => _white;
  static Color get appDefaultColor => _pinkSalmon;

  ///Colors
  static Color get _white => Colors.white;
  static Color get _black => Colors.black;
  static Color get _pinkSalmon => const Color(0xffff9999);

  ///Generals
  //Texts
  static Color get _textNormal => _black;
  static Color get _textNormalWhite => _white;

  //Buttons
  static Color get buttonNormal => appDefaultColor;
  static Color get buttonNormalText => _textNormalWhite;

  //Cards
  static Color get cardDefaultColor => appDefaultColor;
  static Color get cardBackground => appBackground;
  static Color get cardText => _white;

  //Divider
  static Color get dividerMainColor => _black;

  ///Modules
  //AppBar
  static Color get appBarBackground => appBackground.withOpacity(0.8);
  static Color get appBarText => _textNormal;

  //Bottom Navigation Bar
  static Color get bottomBarBackground => appBarBackground.withOpacity(0.8);
  static Color get bottomBarCircleBackground => bottomBarBackground;
  static Color get bottomBarSelected => _textNormal;
  static Color get bottomBarUnselected => _textNormal;
  static Color get bottomBarIcon => _textNormal;
  static Color get bottomBarText => _textNormal;

}