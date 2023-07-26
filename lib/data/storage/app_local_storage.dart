import 'dart:convert';

import 'package:get/get.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_setting_data/app_setting_data.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/storage/local_storage_service.dart';

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
}
