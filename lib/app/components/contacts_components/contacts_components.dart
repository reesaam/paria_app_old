import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppContactComponents {
  static Widget getAvatar(AppContact contact, double size) {
    Widget widget = CircleAvatar(
      maxRadius: size,
      backgroundColor: AppColors.appDefaultColor,
      foregroundColor: AppColors.textNormal,
      child: Text(AppTextProvider.getContactInitials(contact)),
    );
    return widget;
  }
}
