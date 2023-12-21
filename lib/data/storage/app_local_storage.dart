import 'package:get/get.dart';

import '../../core/app_core_functions.dart';
import '../data_models/accounts_data_models/account_records/account_record.dart';
import '../data_models/core_data_models/app_contact/app_contact.dart';
import '../data_models/core_data_models/app_data/app_data.dart';
import '../data_models/core_data_models/app_setting_data/app_setting_data.dart';
import '../resources/app_enums.dart';
import 'local_storage_service.dart';

class AppLocalStorage {
  final String _keyLocalStorage = 'Local Storage';
  final _storage = LocalStorageService();

  static AppLocalStorage get to => Get.find();

  ///Keys
  final _keyContacts = AppStorageKeys.keyContacts.name;
  final _keyAccountsRecords = AppStorageKeys.keyAccountRecords.name;
  final _keySettings = AppStorageKeys.keySettings.name;

  void clearStorage() {
    _storage.remove(_keyContacts);
    _storage.remove(_keyAccountsRecords);
    _storage.remove(_keySettings);
  }

  void clearSpecificKey(AppStorageKeys key) => _storage.remove(key.name);

  ///Contacts
  Future<void> saveContacts(AppContactsList listContacts) async =>
      await _storage.write(_keyContacts, listContacts);

  AppContactsList loadContacts() {
    var data = _storage.read(_keyContacts);
    return data == null ? AppContactsList() : AppContactsList.fromJson(data);
  }

  ///Accounts
  Future<void> saveAccountsRecords(AppAccountRecordsList listRecords) async =>
      await _storage.write(_keyAccountsRecords, listRecords);

  AppAccountRecordsList loadAccountsRecords() {
    var data = _storage.read(_keyAccountsRecords);
    return data == null
        ? AppAccountRecordsList()
        : AppAccountRecordsList.fromJson(data);
  }

  ///Settings
  Future<void> saveSettings(AppSettingData settings) async =>
      await _storage.write(_keySettings, settings);

  AppSettingData loadSettings() {
    var data = _storage.read(_keySettings);
    return data == null
        ? const AppSettingData()
        : AppSettingData.fromJson(data);
  }

  AppData exportData() {
    AppContactsList contacts = AppLocalStorage.to.loadContacts();
    AppAccountRecordsList records = AppLocalStorage.to.loadAccountsRecords();
    AppSettingData setting = AppLocalStorage.to.loadSettings();
    return AppData(
        contacts: contacts, accountRecords: records, setting: setting);
  }

  void importData(AppData appData) async {
    appData.contacts == null
        ? null
        : await AppLocalStorage.to.saveContacts(appData.contacts!);
    appData.accountRecords == null
        ? null
        : await AppLocalStorage.to.saveAccountsRecords(appData.accountRecords!);
    appData.setting == null
        ? null
        : await AppLocalStorage.to.saveSettings(appData.setting!);
  }

  void printData() {
    appDebugPrint('Contacts: ${loadContacts().contactsList.length}');
    appDebugPrint(loadContacts());
    appDebugPrint('Records: ${loadAccountsRecords().recordsList.length}');
    appDebugPrint(loadAccountsRecords());
    appDebugPrint('Setting / Language: ${loadSettings().language}');
    appDebugPrint('Setting / Calendar Type: ${loadSettings().calendarType}');
    appDebugPrint('Settings / Dare Mode: ${loadSettings().darkMode}');
  }
}
