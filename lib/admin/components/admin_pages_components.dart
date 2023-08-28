import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/buttons/app_icon_button.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/resources/app_icons.dart';

class AdminPagesComponents {
  static Widget? goToAdminStartPageActionIcon() => AppIconButton(
      icon: AppIcons.none.icon!,
      onPressed: () => Get.toNamed(AppRoutes.adminStartPage));
}
