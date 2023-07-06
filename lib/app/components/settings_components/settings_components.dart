import 'package:flutter/cupertino.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

class SettingsComponents {
  static Widget widgetSettingSection(String title, List<Widget> widgets) =>
      Padding(
        padding: AppPaddings.settingsSection,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          widgetSectionTitle(title),
          AppDividers.settingsDivider(),
          Column(children: widgets),
        ]),
      );

  static Widget widgetSectionTitle(String text) =>
      Text(text, style: AppTextStyles.settingsSectionTitle);

  static Widget widgetSettingItem(String text, Widget leading) => Padding(
        padding: AppPaddings.settingsItem,
        child: Row(children: [
          Text(text),
          leading,
        ]),
      );
}
