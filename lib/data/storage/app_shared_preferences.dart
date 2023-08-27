import 'dart:convert';

import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/app_extensions/extension_settings.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_setting_data/app_setting_data.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static AppSharedPreferences get to => Get.find();

  ///Keys
  final _keyContacts = AppStorageKeys.keyContacts.name;
  final _keyAccountsRecords = AppStorageKeys.keyAccountRecords.name;
  final _keySettings = AppStorageKeys.keySettings.name;

  void saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    AppContactsList storageContacts = AppContactsList().loadFromStorage;
    String jsonContacts = json.encode(storageContacts);
    sp.setString(_keyContacts, jsonContacts);

    AppAccountRecordsList storageAppAccountRecords =
        AppAccountRecordsList().loadFromStorage;
    String jsonAccountRecords = json.encode(storageAppAccountRecords);
    sp.setString(_keyAccountsRecords, jsonAccountRecords);

    AppSettingData storageSettings = const AppSettingData().loadFromStorage;
    String jsonSettings = json.encode(storageSettings);
    sp.setString(_keyAccountsRecords, jsonSettings);
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String? dataContacts = sp.getString(_keyContacts);
    AppContactsList contacts = dataContacts == null
        ? AppContactsList(contactsList: List<AppContact>.empty(growable: true))
        : AppContactsList.fromJson(json.decode(dataContacts));
    contacts.saveOnStorage();

    String? dataAccountRecords = sp.getString(_keyAccountsRecords);
    AppAccountRecordsList accountRecords = dataAccountRecords == null
        ? AppAccountRecordsList()
        : AppAccountRecordsList.fromJson(json.decode(dataAccountRecords));
    accountRecords.saveOnStorage;

    String? dataSettings = sp.getString(_keySettings);
    AppSettingData settingsData = dataSettings == null
        ? const AppSettingData()
        : AppSettingData.fromJson(json.decode(dataSettings));
    settingsData.saveOnStorage;
  }

  void clearData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
  }
}
