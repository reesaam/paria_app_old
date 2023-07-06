import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/settings_components/settings_components.dart';
import 'package:paria_app/app/controllers/settings_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class SettingsPage extends CoreView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Column(children: [
        widgetGeneral(),
        widgetGeneral(),
        widgetStorage(),
        widgetStorage(),
      ]);

  Widget widgetGeneral() {
    return SettingsComponents.widgetSettingSection(
        AppTexts.settingSectionTitleGeneral, []);
  }

  Widget widgetStorage() {
    return SettingsComponents.widgetSettingSection(
        AppTexts.settingSectionTitleStorage, []);
  }
}
