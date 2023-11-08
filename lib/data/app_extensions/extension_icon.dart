import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

extension IconColor on Icon {
  Icon get withAppDefaultColor => Icon(icon, color: AppColors.appDefaultColor);
  Icon get withAppAppBackgroundColor => Icon(icon, color: AppColors.appBackground);
}

extension IconSize on Icon {
  Icon withSize(double size) => Icon(icon, size: size, color: color);
}