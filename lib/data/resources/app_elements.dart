import 'package:flutter/material.dart';

class AppElements {
  ///BorderRadius
  static BorderRadius get borderRadiusDefault => const BorderRadius.all(Radius.circular(20));

  ///Shapes
  static BoxDecoration get shapeBoxDecoration => BoxDecoration(borderRadius: AppElements.borderRadiusDefault);
}