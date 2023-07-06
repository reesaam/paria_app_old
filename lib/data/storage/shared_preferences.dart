import 'dart:convert';

import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  ///Keys
  final _keyContacts = AppStorageKeys.keyContacts;
  final _keyAccountsRecords = AppStorageKeys.keyAccountRecords;

  Future<void> saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    AppContactsList storageContacts = AppLocalStorage.to.loadContacts();
    String jsonContacts = json.encode(storageContacts);
    sp.setString(_keyContacts.name, jsonContacts);

    AccountRecordsList storageAccountRecords = AppLocalStorage.to.loadAccountsRecords();
    String jsonAccountRecords = json.encode(storageAccountRecords);
    sp.setString(_keyAccountsRecords.name, jsonAccountRecords);
  }

  Future<void> loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String? dataContacts = sp.getString(_keyContacts.name);
    AppContactsList contacts = dataContacts == null
        ? AppContactsList()
        : AppContactsList.fromJson(json.decode(dataContacts));
    AppLocalStorage.to.saveContacts(contacts);

    String? dataAccountRecords = sp.getString(_keyAccountsRecords.name);
    AccountRecordsList accountRecords = dataAccountRecords == null
        ? AccountRecordsList()
        : AccountRecordsList.fromJson(json.decode(dataAccountRecords));
    AppLocalStorage.to.saveAccountsRecords(accountRecords);
  }

  Future<void> clearData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
  }
}
