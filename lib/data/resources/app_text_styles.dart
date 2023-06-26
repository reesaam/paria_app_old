import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppTextStyles {
  ///Generals
  static TextStyle get general => const TextStyle(overflow: TextOverflow.ellipsis);

  ///Card and Container
  static TextStyle get cardText => TextStyle(color: AppColors.cardText);

  ///AppBar
  static TextStyle get appBarTitle => TextStyle(color: AppColors.appBarText);

  ///ModalBottomSheet
  static TextStyle get modalTitle => const TextStyle(fontSize: 20);

  ///SplashScreen
  static TextStyle get splashScreenAppName => TextStyle(fontSize: AppSizes.splashScreenAppName);

  ///Accounts

  ///Accounts Add New Record Modal
  static TextStyle get accountsAddNewRecordTextFieldsLabel => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get accountsAddNewRecordTextFieldsHint => TextStyle(color: AppColors.textNormalGrey);
}
