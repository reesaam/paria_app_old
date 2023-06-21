import 'package:flutter/material.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_bottom_navigation_bar_data.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppBottomNavigationBar {
  Widget? mainBar(AppPageDetail pageDetail) => BottomNavigationBar(
      backgroundColor: AppColors.bottomBarBackground,
      items: AppBottomNavigationBarData().getData());
}
