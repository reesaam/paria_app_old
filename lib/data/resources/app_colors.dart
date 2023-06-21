import 'package:flutter/material.dart';

class AppColors {

  ///Basics
  static Color get transparent => Colors.transparent;
  static Color get appBackground => _pinkSalmon;

  ///Colors
  static Color get _white => Colors.white;
  static Color get _black => Colors.black;
  static Color get _pinkSalmon => const Color(0xffff9999);

  ///Generals
  //Texts
  static Color get _textNormal => _black;
  static Color get _textNormalWhite => _white;

  ///Modules
  //AppBar
  // static Color get appBarBackground => _persianGreen;
  static Color get appBarBackground => appBackground.withOpacity(0.6);
  static Color get appBarText => _textNormalWhite;

  //Bottom Navigation Bar
  static Color get bottomBarBackground => appBarBackground.withOpacity(0.6);
  static Color get bottomBarCircleBackground => bottomBarBackground;
  static Color get bottomBarSelected => _textNormalWhite;
  static Color get bottomBarUnselected => _textNormal;
  static Color get bottomBarIcon => _textNormalWhite;
  static Color get bottomBarText => _textNormalWhite;

}