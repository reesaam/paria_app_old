import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppTextStyles {
  ///Generals
  static TextStyle get general => const TextStyle(overflow: TextOverflow.ellipsis);

  ///AppBar
  static TextStyle get appBarTitle => TextStyle(color: AppColors.appBarText);

  ///SplashScreen
  static TextStyle get splashScreenAppName => TextStyle(fontSize: AppSizes.splashScreenAppName);
}