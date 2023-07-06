import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppDividers {
  static Widget generalDivider() => Divider(color: AppColors.dividerMainColor);

  static Widget settingsDivider() => Divider(color: AppColors.appDefaultColor);
}