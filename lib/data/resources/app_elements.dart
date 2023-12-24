import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppElements {

  ///BorderRadius
  static double get noRadius => 0;
  static double get defaultRadius => 20;
  static double get defaultLowRadius => 10;
  static Radius get defaultBorderRadius => Radius.circular(defaultRadius);
  static Radius get defaultBorderLowRadius => Radius.circular(defaultLowRadius);

  static BorderRadius get defaultBorderWithNoRadius => BorderRadius.all(Radius.circular(noRadius));
  static BorderRadius get defaultBorderWithRadius => BorderRadius.all(Radius.circular(defaultRadius));
  static BorderRadius get defaultBorderWithLowRadius => BorderRadius.all(Radius.circular(defaultLowRadius));
  static BorderRadius get topBorderWithRadius => BorderRadius.only(topLeft: defaultBorderRadius, topRight: defaultBorderRadius);

  static BorderSide get defaultBorderSide => BorderSide(color: AppColors.textNormal, width: 2);
  static BorderSide get cardTransparentBorderSide => BorderSide(color: AppColors.transparent, width: 2);
  static BorderSide get defaultBorderSideFocused => BorderSide(color: AppColors.appDefaultColor, width: 2);
  static BorderSide get defaultBorderSideDisabled => BorderSide(color: AppColors.buttonTextDisabled, width: 2);

  static OutlineInputBorder get defaultOutlineBorder => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: defaultBorderSide);
  static OutlineInputBorder get defaultOutlineBorderFocused => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: defaultBorderSideFocused);
  static OutlineInputBorder get cardTransparentOutlineBorder => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: cardTransparentBorderSide);
  static OutlineInputBorder get cardTransparentOutlineBorderWithNoRadius => OutlineInputBorder(borderRadius: defaultBorderWithNoRadius, borderSide: cardTransparentBorderSide);

  ///Border
  static BoxBorder get boxBorder => Border.all(color: AppColors.cardBackground);

  ///Shapes
  static BoxDecoration get shapeBoxDecoration => BoxDecoration(borderRadius: AppElements.defaultBorderWithRadius);

  static RoundedRectangleBorder get defaultBorderShape => RoundedRectangleBorder(borderRadius: defaultBorderWithRadius);
  static RoundedRectangleBorder get defaultBorderLowRadiusShape => RoundedRectangleBorder(borderRadius: defaultBorderWithLowRadius);
  static RoundedRectangleBorder get defaultModalBorderShape => RoundedRectangleBorder(borderRadius: topBorderWithRadius);
  static RoundedRectangleBorder get defaultAlertBorderShape => RoundedRectangleBorder(borderRadius: defaultBorderWithRadius);

  ///Avatars
  static double get contactsListAvatarMaxRadius => 15;
  static double get contactsContactAvatarMaxRadius => 20;

  ///Panel
  static BoxBorder get defaultPanelBorder => Border.all(color: AppColors.panelBorder);
  static BoxDecoration get defaultPanel => BoxDecoration(border: defaultPanelBorder, borderRadius: defaultBorderWithRadius);

  static BorderSide get checkBoxDefaultSide => defaultBorderSide.copyWith(color: AppColors.appCheckBox);
}