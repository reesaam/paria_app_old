import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';

class AppGeneralButton extends StatelessWidget {
  const AppGeneralButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.icon,
      this.leading});

  final String text;
  final Function onTap;
  final IconData? icon;
  final IconData? leading;

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.buttonBackgroundNormal),
          foregroundColor: MaterialStateProperty.all(AppColors.buttonTextNormal),
          side: MaterialStateProperty.all(AppElements.defaultBorderSideFocused),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(AppElements.defaultBorderLowRadiusShape),
          splashFactory: InkSplash.splashFactory),
      onPressed: () => onTap(),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon == null ? shrinkSizedBox : Icon(icon),
            AutoSizeText(text),
            leading == null ? shrinkSizedBox : Icon(leading)
          ]));
}
