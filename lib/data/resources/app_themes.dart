import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';

class AppThemes {
  static get mainTheme => ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: mainAppBar,
        bottomNavigationBarTheme: mainBottomBar,
        textTheme: textTheme,
        backgroundColor: AppColors.appBackground,
        cardTheme: cardTheme,
        buttonTheme: buttonThemeData,
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

  static get defaultTextStyle => TextStyle(color: AppColors.appDefaultColor);

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
      );
}
