import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppGeneralButton extends StatelessWidget {
  const AppGeneralButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) => Container(
        width: Get.width,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.buttonNormal),
                foregroundColor: MaterialStateProperty.all(AppColors.buttonNormalText)),
            onPressed: onTap(),
            child: Text(text)),
      );
}
