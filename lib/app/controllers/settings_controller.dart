import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/update_components/app_update.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extension_settings.dart';
import 'package:paria_app/data/data_models/core_data_models/app_setting_data/app_setting_data.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/app_local_storage.dart';

class SettingsController extends CoreController {
  Rx<AppSettingData> appSettings = const AppSettingData().obs;

  Rx<bool> darkMode = false.obs;
  Rx<AppLanguages> selectedLanguage = AppLanguages.english.obs;
  Rx<AppCalendarTypes> selectedCalendar = AppCalendarTypes.georgian.obs;

  Rx<String> updateAvailableVersion = AppTexts.generalNotAvailable.obs;

  @override
  void dataInit() {
    appSettings = const AppSettingData().loadFromStorage.obs;
    functionCheckUpdateAvailableVersion();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.settings;
  }

  @override
  void onInitFunction() {
    fillData();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    saveSettings();
    saveAppData();
  }

  fillData() {
    selectedLanguage.value = appSettings.value.language ?? AppLanguages.english;
    selectedCalendar.value =
        appSettings.value.calendarType ?? AppCalendarTypes.georgian;
    darkMode.value = appSettings.value.darkMode ?? false;
    appDebugPrint('Fill Setting Data Function Applied Data');
    appSettings.listen((data) => fillData());
  }

  functionDarkModeOnChange(bool value) {
    darkMode.value = value;
    appDebugPrint('DarkMode Changed to ${darkMode.value}');
    refresh();
  }

  functionCheckUpdateAvailableVersion() async {
    updateAvailableVersion.value = await AppCheckUpdate().checkVersion();
    appDebugPrint('Checked Update Version: ${updateAvailableVersion.value}');
  }

  functionGoToUpdatePage() => Get.toNamed(AppPageDetails.update.pageRoute!);

  functionClearContacts() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyContacts);
      Get.back();
      appDebugPrint('Contacts Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function);
  }

  functionClearRecords() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyAccountRecords);
      Get.back();
      appDebugPrint('Records Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function);
  }

  functionClearAllData() {
    function() {
      clearAppData();
      Get.back();
      appDebugPrint('');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function);
  }

  saveSettings() {
    appSettings.saveOnStorage;
    appDebugPrint('Settings Saved');
  }

  resetAllSettings() {
    appSettings.value = const AppSettingData().clearData;
    saveSettings();
    appDebugPrint('Reset Settings Data performed');
  }
}
