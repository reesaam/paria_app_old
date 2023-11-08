import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/routes/app_routes.dart';
import '../../data/resources/app_bottom_navigation_bar_data.dart';
import '../../data/resources/app_colors.dart';

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