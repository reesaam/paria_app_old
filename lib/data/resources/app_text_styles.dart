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

  ///Contacts
  static TextStyle get contactsNoContacts => TextStyle(fontSize: 20, color: AppColors.appDefaultColor);
  static TextStyle get contactsListItem => TextStyle(color: AppColors.textNormalGrey);

  static TextStyle get contactsChooseContact => TextStyle(fontSize: 20, color: AppColors.textNormalGrey);

  ///Accounts
  static TextStyle get accountNoRecord => TextStyle(fontSize: 20, color: AppColors.appDefaultColor);
  static TextStyle get accountsRecordsTableTitle => TextStyle(fontSize: 18, color: AppColors.appDefaultColor);

  ///Text Fields
  static TextStyle get textFieldText => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get textFieldLabel => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get textFieldHint => TextStyle(color: AppColors.textNormalGrey);

  ///Popup Menu
  static TextStyle get popupMenuItem => const TextStyle(fontSize: 15);
}
