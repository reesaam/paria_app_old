import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class AppSwitch extends Switch {
  const AppSwitch(
      {super.key, required super.value, required super.onChanged, this.enabled})
      : super();

  final bool? enabled;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: AppSizes.switchHeight.height,
      child: Switch(
        value: value,
        onChanged: (value) => onChanged!(value),
        focusNode: FocusNode(canRequestFocus: enabled == false ? false : true),
        activeColor: AppColors.appDefaultColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
}
