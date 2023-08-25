import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class AppPanel extends Container {
  AppPanel({
    super.key,
    required this.innerChild,
    this.title,
    this.paddings,
  });

  final Widget innerChild;
  final String? title;
  final EdgeInsets? paddings;

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: paddings ?? AppPaddings.panelTitle,
            child: Text(title ?? '', style: AppTextStyles.panelTitle)),
        Container(
            padding: AppPaddings.panel,
            decoration: AppElements.defaultPanel,
            child: innerChild),
      ]);
}
