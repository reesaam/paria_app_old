import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_bottom_navigation_bar_data.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final int? selectedIndex;
  const AppBottomNavigationBar({super.key, this.selectedIndex});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {

  RxInt selectedIndex = 0.obs;

  void _onItemTap(int index) {
    selectedIndex.value = index;
    switch(index) {
      case 0 : _goToPage(AppRoutes.homePage);
      case 1 : _goToPage(AppRoutes.contacts);
      case 2 : _goToPage(AppRoutes.accounts);
      case 3 : _goToPage(AppRoutes.settings);
      default: break;
    }
    Get.reload();
  }

  void _goToPage(String page) => Get.offAllNamed(page);

  @override
  Widget build(BuildContext context) {
    selectedIndex.value = widget.selectedIndex!;
    return BottomNavigationBar(
        backgroundColor: AppColors.bottomBarBackground,
        currentIndex: selectedIndex.value,
        onTap: (index) => _onItemTap(index),
        selectedItemColor: AppColors.bottomBarSelected,
        unselectedItemColor: AppColors.bottomBarUnselected,
        items: AppBottomNavigationBarData().getData());
  }
}