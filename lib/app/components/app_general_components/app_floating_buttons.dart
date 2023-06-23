import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppFloatingActionButtons extends StatelessWidget {
  const AppFloatingActionButtons(
      {super.key, required this.icon, required this.onTap});

  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      backgroundColor: AppColors.floatingButtonColor,
      foregroundColor: AppColors.floatingButtonText,
      mini: true,
      child: Icon(icon),
      onPressed: () => onTap());
}
