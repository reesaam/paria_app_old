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
    this.textInputType,
    this.suffixAction,
    this.editable,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? icon;
  final TextInputType? textInputType;
  final VoidCallback? suffixAction;
  final bool? editable;

  Widget _icon() => Icon(icon, color: AppColors.textNormalGrey);

  Widget suffix() => suffixAction == null
      ? _icon()
      : InkWell(onTap: suffixAction, child: _icon());

  @override
  Widget build(BuildContext context) => TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: AppTextStyles.textFieldText,
      cursorColor: AppColors.textNormalGrey,
      keyboardType: textInputType ?? TextInputType.text,
      enableInteractiveSelection: editable == false ? false : true,
      canRequestFocus: editable == false ? false : true,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTextStyles.textFieldLabel,
        hintText: hint,
        hintStyle: AppTextStyles.textFieldHint,
        hintMaxLines: 1,
        alignLabelWithHint: true,
        suffix: suffix(),
        border: AppElements.defaultOutlineBorder,
        enabledBorder: AppElements.defaultOutlineBorder,
        focusedBorder: AppElements.defaultOutlineBorderFocused,
        isDense: true,
      ));
}
