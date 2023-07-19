import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_icons.dart';

extension IconColor on Icon {
  Icon get withAppDefaultColor => Icon(icon, color: AppColors.appDefaultColor);
  Icon get withAppAppBackgroundColor => Icon(icon, color: AppColors.appBackground);
  Icon withSize(double size) => Icon(icon, color: AppColors.appDefaultColor, size: size);
}