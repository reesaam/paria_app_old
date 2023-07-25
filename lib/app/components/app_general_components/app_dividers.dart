import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppDividers {
  static Widget get generalDivider => Divider(color: AppColors.dividerMainColor);
  static Widget get generalDividerWithAppDefaultColor => Divider(color: AppColors.appDefaultColor);

  static Widget get settingsDivider => Divider(color: AppColors.appDefaultColor);
}