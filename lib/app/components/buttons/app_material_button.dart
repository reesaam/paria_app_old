import 'package:flutter/material.dart';
import 'package:paria_app/data/app_extensions/app_extensions_general.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppIconButton extends MaterialButton {
  const AppIconButton({super.key, required this.icon, required super.onPressed});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.iconButtonSize,
      width: AppSizes.iconButtonSize,
      child: IconButton(
          padding: AppPaddings.zero,
          iconSize: AppSizes.iconButtonIconSize,
          onPressed: onPressed,
          icon: Icon(icon).withAppDefaultColor()),
    );
  }
}
