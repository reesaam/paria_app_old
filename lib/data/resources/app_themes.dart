import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_fonts.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppThemes {
  static get mainTheme => ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: mainAppBar,
        bottomNavigationBarTheme: mainBottomBar,
        textTheme: textTheme,
        backgroundColor: AppColors.appBackground,
        cardTheme: cardTheme,
        buttonTheme: buttonThemeData,
        checkboxTheme: checkBoxThemeData,
        switchTheme: switchThemeData,
      );

  static get mainAppBar => AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.appBarBackground,
        foregroundColor: AppColors.appBarText,
      );

  static get mainBottomBar => BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        backgroundColor: AppColors.bottomBarBackground,
        selectedItemColor: AppColors.bottomBarSelected,
        unselectedItemColor: AppColors.bottomBarUnselected,
      );

  static get defaultTextStyle => TextStyle(
      color: AppColors.appDefaultColor, fontSize: AppFonts.defaultFontSize);

  static get textTheme => TextTheme(
        bodyLarge: defaultTextStyle,
        bodyMedium: defaultTextStyle,
        bodySmall: defaultTextStyle,
        displayLarge: defaultTextStyle,
        displayMedium: defaultTextStyle,
        displaySmall: defaultTextStyle,
        titleLarge: defaultTextStyle,
        titleMedium: defaultTextStyle,
        titleSmall: defaultTextStyle,
      );

  static get cardTheme => CardTheme(
        color: AppColors.cardBackground,
        shape: AppElements.defaultOutlineBorderFocused,
      );

  static get buttonThemeData => ButtonThemeData(
        buttonColor: AppColors.buttonBackgroundNormal,
        disabledColor: AppColors.textNormalGrey,
      );

  static get checkBoxThemeData => CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.appCheckBoxTick),
      fillColor: MaterialStateProperty.all(AppColors.appCheckBox));

  static get switchThemeData => const SwitchThemeData();

  static get calendarTheme => Theme.of(Get.context!).copyWith(
      colorScheme: ColorScheme.light(
          background: AppColors.appBackground,
          primary: AppColors.appDefaultColor,
          onPrimary: AppColors.textNormalWhite,
          secondary: AppColors.appBackground,
          onSecondary: AppColors.textNormal,
          onError: AppColors.error,
          error: AppColors.error));
}
