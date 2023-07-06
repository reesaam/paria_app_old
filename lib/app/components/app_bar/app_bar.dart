import 'package:flutter/material.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class AppAppBar extends AppBar {
  AppAppBar({super.key, required this.pageDetail}) : super();

  final AppPageDetail pageDetail;

  @override
  Widget? get title => Text(pageDetail.pageName ?? '', style: AppTextStyles.appBarTitle);

  @override
  Color? get backgroundColor => AppColors.appBarBackground;

  @override
  bool? get centerTitle => false;
}