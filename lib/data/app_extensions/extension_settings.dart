import 'package:get/get.dart';
import 'package:paria_app/data/data_models/core_data_models/app_setting_data/app_setting_data.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/storage/app_local_storage.dart';

extension RxStorage on Rx<AppSettingData> {
  void get saveOnStorage async => await AppLocalStorage.to.saveSettings(value);
  Rx<AppSettingData> get loadFromStorage => AppLocalStorage.to.loadSettings().obs;
}

extension Storage on AppSettingData {
  void get saveOnStorage async => await AppLocalStorage.to.saveSettings(this);
  AppSettingData get loadFromStorage => AppLocalStorage.to.loadSettings();
}

extension Clear on AppSettingData {
  AppSettingData get clearData => const AppSettingData(
      language: AppLanguages.english,
      calendarType: AppCalendarTypes.georgian,
      darkMode: false);
}