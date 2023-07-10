import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        widgetBackup(),
        widgetStorage(),
      ]);

  Widget widgetGeneral() {
    Widget widgetDarkMode() => Obx(() => Switch(
        value: controller.darkMode.value,
        onChanged: (value) => controller.functionDarkModeOnChange(value)));

    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleGeneral),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionGeneralItemDarkMode,
              widgetDarkMode(),
              null)
        ]);
  }

  Widget widgetBackup() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleBackup),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupBackup,
              null,
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupRestore,
              null,
              null),
        ]);
  }

  Widget widgetStorage() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleStorage),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseContacts,
              null,
              controller.functionClearContacts),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseRecords,
              null,
              controller.functionClearRecords),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseAllData,
              null,
              controller.functionClearAllData),
        ]);
  }
}
