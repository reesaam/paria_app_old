import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppElements {
  ///BorderRadius
  static double get defaultRadius => 20;
  static Radius get defaultBorderRadius => Radius.circular(defaultRadius);
  static BorderRadius get defaultBorderWithRadius => BorderRadius.all(Radius.circular(defaultRadius));
  static BorderRadius get topBorderWithRadius => BorderRadius.only(topLeft: defaultBorderRadius, topRight: defaultBorderRadius);
  static BorderSide get defaultBorderSide => BorderSide(color: AppColors.textNormal);
  static BorderSide get defaultBorderSideFocused => BorderSide(color: AppColors.appDefaultColor);
  static OutlineInputBorder get defaultOutlineBorder => OutlineInputBorder(borderRadius: defaultBorderWithRadius, borderSide: defaultBorderSide);
  static OutlineInputBorder get defaultOutlineBorderFocused => OutlineInputBorder(borderRadius: defaultBorderWithRadius, borderSide: defaultBorderSideFocused);

  ///Shapes
  static BoxDecoration get shapeBoxDecoration => BoxDecoration(borderRadius: AppElements.defaultBorderWithRadius);
  static RoundedRectangleBorder get defaultBorderShape => RoundedRectangleBorder(borderRadius: defaultBorderWithRadius);
  static RoundedRectangleBorder get defaultModalBorderShape => RoundedRectangleBorder(borderRadius: topBorderWithRadius);

  ///Avatars
  static double get contactsListAvatarMaxRadius => 15;
  static double get contactsContactAvatarMaxRadius => 20;
}