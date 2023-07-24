import 'package:flutter/material.dart';

class AppColors {

  ///Basics
  static Color get transparent => Colors.transparent;
  static Color get appBackground => _white;
  static Color get appElementsBackground => _grey;
  static Color get appForeground => _grey;
  static Color get appDefaultColor => _pinkSalmon;

  ///Colors
  static Color get _white => Colors.white;
  static Color get _black => Colors.black;
  static Color get _grey => Colors.grey;
  // static Color get _pinkSalmon => const Color(0xffff9999);
  // static Color get _pinkSalmon => const Color(0xfffab072);
  static Color get _pinkSalmon => const Color(0xfffe7b7c);
  static Color get _greenPositive => Colors.green;
  static Color get _redNegative => Colors.redAccent;

  ///Generals
  static Color get error => Colors.redAccent;

  //Texts
  static Color get textNormal => _black;
  static Color get textNormalGrey => _grey;
  static Color get textNormalWhite => _white;
  static Color get textNormalAppDefaultColor => appDefaultColor;

  //Buttons
  static Color get buttonBackgroundNormal => appBackground;
  static Color get buttonTextNormal => appDefaultColor;

  //Checkbox
  static Color get appCheckBox => _grey;
  static Color get appCheckBoxTick => _white;

  //FloatingActionButton
  static Color get floatingButtonColor => appDefaultColor;
  static Color get floatingButtonText => appBackground;

  //Cards
  static Color get cardDefaultColor => appDefaultColor;
  static Color get cardBackground => appBackground;
  static Color get cardText => appDefaultColor;

  //Divider
  static Color get dividerMainColor => _black;

  //App Panel
  static Color get panelBorder => _grey;

  ///Modules
  //AppBar
  // static Color get appBarBackground => appBackground.withOpacity(0.8);
  static Color get appBarBackground => appDefaultColor;
  static Color get appBarText => textNormalWhite;

  //Bottom Navigation Bar
  static Color get bottomBarBackground => appBarBackground.withOpacity(0.8);
  static Color get bottomBarCircleBackground => bottomBarBackground;
  static Color get bottomBarSelected => textNormalAppDefaultColor;
  static Color get bottomBarUnselected => textNormalGrey;
  static Color get bottomBarIcon => textNormal;
  static Color get bottomBarText => textNormal;

  ///Sections
  static Color get accountsRecordItemPositive => _greenPositive;
  static Color get accountsRecordItemNegative => _redNegative;

}