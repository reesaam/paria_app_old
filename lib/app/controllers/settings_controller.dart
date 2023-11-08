import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_settings.dart';
import 'package:paria_app/data/app_extensions/extension_string.dart';

import '../../core/admin/app_core_functions.dart';
import '../../core/elements/core_controller.dart';
import '../../data/data_models/core_data_models/app_data/app_data.dart';
import '../../data/data_models/core_data_models/app_setting_data/app_setting_data.dart';
import '../../data/resources/app_enums.dart';
import '../../data/resources/app_page_details.dart';
import '../../data/resources/app_texts.dart';
import '../../data/storage/app_local_storage.dart';
import '../components/app_general_components/app_dialogs.dart';
import '../components/update_components/app_update.dart';

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

  functionBackup() {
    function() async {
      Get.back();
      AppData appdata = AppLocalStorage.to.exportData();
      var jsonData = jsonEncode(appdata);
      Uint8List data = jsonData.toString().toUInt8List;
      SaveFileDialogParams saveParams = SaveFileDialogParams(
          data: data, fileName: AppTexts.settingBackupFilename);
      String? filePath = await FlutterFileDialog.saveFile(params: saveParams);
      appDebugPrint('** Backup File Saved **');
      appDebugPrint('Filename: ${saveParams.fileName}');
      appDebugPrint('Path: ${saveParams.sourceFilePath}');
      appDebugPrint('File Path: $filePath');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataExport, function, true);
  }

  functionRestore() {
    function() async {
      Get.back();
      OpenFileDialogParams openFileParams =
      const OpenFileDialogParams(dialogType: OpenFileDialogType.document);
      String? importFilePath = await FlutterFileDialog.pickFile(params: openFileParams);
      appDebugPrint('** Backup File Selected **');
      appDebugPrint('File Path: $importFilePath');

      File importFile = File(importFilePath!);
      String stringData = String.fromCharCodes(importFile.readAsBytesSync());
      var jsonData = jsonDecode(stringData) as Map<String, dynamic>;
      AppData appData = AppData.fromJson(jsonData);
      clearAppData();
      AppLocalStorage.to.importData(appData);
      appDebugPrint('** Data Imported **');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataMayLost, function, true);
  }

  functionClearContacts() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyContacts);
      Get.back();
      appDebugPrint('Contacts Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  functionClearRecords() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyAccountRecords);
      Get.back();
      appDebugPrint('Records Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  functionClearAllData() {
    function() {
      clearAppData();
      Get.back();
      appDebugPrint('');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
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
