import 'package:flutter/material.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppContactComponents {
  static Widget getAvatar(AppContact contact, double size) {
    Widget widget = CircleAvatar(
      maxRadius: size + 2,
      backgroundColor: AppColors.appDefaultColor,
      foregroundColor: AppColors.textNormal,
      child: Text(contact.getContactInitials, style: TextStyle(fontSize: size),),
    );
    return widget;
  }
}
