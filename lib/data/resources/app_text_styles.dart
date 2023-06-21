import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppTextStyles {
  ///Generals
  static TextStyle get general => const TextStyle(overflow: TextOverflow.ellipsis);

  ///AppBar
  static TextStyle get appBarTitle => TextStyle(color: AppColors.appBarText);
}