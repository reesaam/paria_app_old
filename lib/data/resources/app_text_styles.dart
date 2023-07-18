import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppTextStyles {
  static get defaultSize => AppSizes.defaultFontSize;
  static get normalSize => defaultSize;
  static get bigSize => defaultSize + 3;
  static get titleSize => defaultSize + 5;
  static get bigTitleSize => defaultSize + 8;
  static get smallSize => defaultSize - 2;

  ///Generals
  static TextStyle get general => const TextStyle(overflow: TextOverflow.ellipsis);
  static TextStyle get panelTitle => general.copyWith(color: AppColors.textNormalGrey);

  ///Card and Container
  static TextStyle get cardText => TextStyle(color: AppColors.cardText);
  static TextStyle get cardTitle => TextStyle(color: AppColors.cardText, fontSize: bigSize);

  ///AppBar
  static TextStyle get appBarTitle => TextStyle(color: AppColors.appBarText, fontSize: bigTitleSize);

  ///ModalBottomSheet
  static TextStyle get modalTitle => TextStyle(fontSize: titleSize);

  ///Text Fields
  static TextStyle get textFieldText => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get textFieldLabel => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get textFieldHint => TextStyle(color: AppColors.textNormalGrey);

  ///Popup Menu
  static TextStyle get popupMenuItem => const TextStyle();

  ///Dialogs
  static TextStyle get dialogAlertTitle => TextStyle(fontSize: titleSize);
  static TextStyle get dialogAlertText => TextStyle(fontSize: bigSize, color: AppColors.textNormalGrey);

  ///SplashScreen
  static TextStyle get splashScreenAppName => TextStyle(fontSize: AppSizes.splashScreenAppName);

  ///Contacts
  static TextStyle get contactsNoContacts => TextStyle(fontSize: titleSize, color: AppColors.appDefaultColor);
  static TextStyle get contactsListItem => TextStyle(color: AppColors.textNormalGrey, fontSize: bigSize);

  static TextStyle get contactsChooseContact => TextStyle(fontSize: titleSize, color: AppColors.textNormalGrey);

  ///Contacts Balance
  static TextStyle get contactsBalanceTitle => TextStyle(fontSize: bigSize);
  static TextStyle get contactsBalanceItems => TextStyle(color: AppColors.textNormalGrey);
  static TextStyle get contactsBalanceItemsContact => TextStyle(color: AppColors.textNormalGrey, fontWeight: FontWeight.bold);

  ///Contacts Show Contact
  static TextStyle get contactsShowContactSectionTitle => const TextStyle(fontWeight: FontWeight.bold);
  static TextStyle get contactsShowContactFullName => TextStyle(fontSize: bigTitleSize, color: AppColors.textNormalGrey);
  static TextStyle get contactsShowContactInfoTitle => TextStyle(color: AppColors.textNormalGrey, fontWeight: FontWeight.bold);
  static TextStyle get contactsShowContactInfoItem => TextStyle(color: AppColors.textNormalGrey, );

  ///Accounts
  static TextStyle get accountNoRecord => TextStyle(fontSize: titleSize, color: AppColors.appDefaultColor);
  static TextStyle get accountsRecordsTableTitle => TextStyle(fontSize: bigSize, color: AppColors.appDefaultColor);

  ///Settings
  static TextStyle get settingsSectionTitle => TextStyle(fontSize: bigSize);
  static TextStyle get settingsSectionItem => TextStyle(color: AppColors.textNormalGrey);
}
