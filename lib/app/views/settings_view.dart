import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu_item.dart';
import 'package:paria_app/app/components/app_general_components/app_switch.dart';
import 'package:paria_app/app/components/app_bottom_navigation_bar.dart';
import 'package:paria_app/app/components/settings_components/settings_components.dart';
import 'package:paria_app/app/controllers/settings_controller.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class SettingsPage extends CoreView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar(
      pageDetail: controller.pageDetail,
      barAction: widgetAppbarThreeDotsButton());

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
        widgetUpdate(),
        widgetBackup(),
        widgetStorage(),
      ]);

  Widget widgetAppbarThreeDotsButton() =>
      AppPopupMenu(listItems: listAppbarThreeDotsButton, lightIcon: true);

  List<AppPopupMenuItem> get listAppbarThreeDotsButton => List.of([
        AppPopupMenuItem(
            text: AppTexts.settingAppbarMenuResetSettings, onTapFunction: () {})
      ]);

  Widget widgetGeneral() {
    ///TODO: Languages Implementation
    Widget widgetLanguages() =>
        Text(controller.selectedLanguage.value.name.capitalizeFirst ?? '');

    ///TODO: Calendar Types Implementation
    Widget widgetCalendar() =>
        Text(controller.selectedCalendar.value.name.capitalizeFirst ?? '');

    Widget widgetDarkMode() => Obx(() => AppSwitch(
        value: controller.darkMode.value,
        onChanged: (value) => controller.functionDarkModeOnChange(value),
        enabled: false));

    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleGeneral),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleGeneralLanguage,
              widgetLanguages(),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleGeneralCalendar,
              widgetCalendar(),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionGeneralItemDarkMode,
              widgetDarkMode(),
              null),
        ]);
  }

  Widget widgetUpdate() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleUpdate),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleUpdateCurrentVersion,
              Text(AppInfo.appCurrentVersion),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleUpdateAvailableVersion,
              Text(controller.updateAvailableVersion.value ==
                      AppInfo.appCurrentVersion
                  ? controller.updateAvailableVersion.value
                  : AppTexts.generalNotAvailable),
              controller.updateAvailableVersion.value ==
                      AppInfo.appCurrentVersion
                  ? controller.functionGoToUpdatePage
                  : null),
        ]);
  }

  Widget widgetBackup() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleBackup),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupBackup, null, null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupRestore, null, null),
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
