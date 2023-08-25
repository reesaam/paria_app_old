import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppProgressIndicator {

  static Widget circularDefault() => CircularProgressIndicator(
    color: AppColors.appDefaultColor,
  );

  static Widget linearDefault() => LinearProgressIndicator(
    color: AppColors.appDefaultColor,
    backgroundColor: AppColors.appBackground,
  );
}