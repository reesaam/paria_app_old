import 'package:flutter/material.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class AppAppBar {
  Widget _getPageTitle(AppPageDetail pageDetail) =>
      Text(pageDetail.pageName ?? '', style: AppTextStyles.appBarTitle);

  PreferredSizeWidget? mainBar(AppPageDetail pageDetail) => AppBar(
        centerTitle: false,
        backgroundColor: AppColors.appBarBackground,
        title: _getPageTitle(pageDetail),
      );
}
