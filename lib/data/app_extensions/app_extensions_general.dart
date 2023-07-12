import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_icons.dart';

extension IconColor on Icon {
  withAppDefaultColor() => Icon(icon, color: AppColors.appDefaultColor);
  withSize(double size) => Icon(icon, color: AppColors.appDefaultColor, size: size);
}