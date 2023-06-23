import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.icon,
    this.textInputType
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? icon;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) => TextField(
      controller: controller,
      cursorColor: AppColors.textNormal,
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: AppTextStyles.accountsAddNewRecordTextFieldsLabel,
        hintText: hint,
        hintStyle: AppTextStyles.accountsAddNewRecordTextFieldsHint,
        hintMaxLines: 1,
        alignLabelWithHint: true,
        suffixIcon: Icon(icon),
        suffixIconColor: AppColors.textNormalGrey,
        // focusColor: AppColors.appDefaultColor,
        // fillColor: AppColors.appDefaultColor,
        border: AppElements.defaultOutlineBorder,
        enabledBorder: AppElements.defaultOutlineBorder,
        focusedBorder: AppElements.defaultOutlineBorderFocused,
        isDense: true,
      ));
}
