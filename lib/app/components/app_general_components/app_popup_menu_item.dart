import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class AppPopupMenuItem extends PopupMenuItem {
  const AppPopupMenuItem({
    super.key,
    super.child,
    required this.text,
    required this.onTapFunction,
  });

  final String text;
  final Function() onTapFunction;

  @override
  Widget? get child => Text(text, style: AppTextStyles.popupMenuItem);

  Widget build(BuildContext context) => PopupMenuItem(
        onTap: () => onTapFunction,
        value: text,
        child: child,
      );
}
