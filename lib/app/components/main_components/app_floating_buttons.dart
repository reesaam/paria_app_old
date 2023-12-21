import 'package:flutter/material.dart';

import '../../../data/app_extensions/extension_icon.dart';
import '../../../data/resources/app_colors.dart';

class AppFloatingActionButtons extends FloatingActionButton {
  const AppFloatingActionButtons({super.key, required this.icon, required super.onPressed});

  final IconData icon;

  @override
  Widget? get child => Icon(icon).withAppAppBackgroundColor;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      backgroundColor: AppColors.floatingButtonColor,
      foregroundColor: AppColors.floatingButtonText,
      mini: true, onPressed: onPressed,
      child: child);
}