import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';

class AppThemes {
  static get mainTheme => ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: AppColors.appBackground,
        cardTheme: CardTheme(color: AppColors.cardDefaultColor),
        buttonTheme: buttonThemeData,
        appBarTheme: mainAppBar,
        bottomNavigationBarTheme: mainBottomBar,
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

  static get buttonThemeData => ButtonThemeData(
        buttonColor: AppColors.buttonNormal,
      );
}
