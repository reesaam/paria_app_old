import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

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
            splashFactory: InkSplash.splashFactory,
            side: MaterialStateProperty.all(AppElements.defaultBorderSideFocused),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(AppElements.defaultBorderShape)),
        onPressed: () => onTap(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(icon), Text(text), Icon(leading)]),
      );
}
