import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppThemes {
  static get mainTheme => ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: AppColors.appBackground,
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
}
