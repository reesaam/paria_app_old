import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class SettingsComponents {
  static Widget widgetSettingSection(Widget title, List<Widget> widgets) =>
      Padding(
          padding: AppPaddings.settingsSection,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            title,
            AppDividers.settingsDivider(),
            Column(children: widgets),
          ]));

  static Widget widgetSectionTitle(String text) =>
      Text(text, style: AppTextStyles.settingsSectionTitle);

  static Widget widgetSettingItem(
          String text, Widget? leading, Function? wholeItemFunction) =>
      InkWell(
          onTap: wholeItemFunction == null ? null : () => wholeItemFunction(),
          child: Padding(
              padding: AppPaddings.settingsItem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text, style: AppTextStyles.settingsSectionItem),
                    leading ?? shrinkSizedBox,
                  ])));
}
