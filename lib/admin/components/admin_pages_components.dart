import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/components/buttons/app_icon_button.dart';
import '../../core/routes/app_routes.dart';
import '../../data/resources/app_icons.dart';

class AdminPagesComponents {
  static Widget? goToAdminStartPageActionIcon() => AppIconButton(
      icon: AppIcons.none.icon!,
      onPressed: () => Get.toNamed(AppRoutes.adminStartPage));
}
