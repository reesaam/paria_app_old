import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_enums.dart';

class AppLocalStorage {
  final String _keyLocalStorage = 'Local Storage';
  final _storage = GetStorage();

  static AppLocalStorage get to => Get.find();

  ///Keys
  final _keyContacts = AppStorageKeys.keyContacts;
  final _keyAccountsRecords = AppStorageKeys.keyAccountRecords;

  void clearStorage() {
    _storage.remove(_keyContacts.name);
    _storage.remove(_keyAccountsRecords.name);
  }

  ///Contacts
  Future<void> saveContacts(AppContactsList listContacts) async =>
      await _storage.write(_keyContacts.name, listContacts);

  AppContactsList loadContacts() {
    final data = _storage.read<Map<String, dynamic>>(_keyContacts.name);
    return data == null
        ? AppContactsList()
        : AppContactsList.fromJson(data);
  }

  ///Accounts
  Future<void> saveAccountsRecords(AccountRecordsList listRecords) async =>
      await _storage.write(_keyAccountsRecords.name, listRecords);

  AccountRecordsList loadAccountsRecords() {
    final data = _storage.read<Map<String, dynamic>>(_keyAccountsRecords.name);
    return data == null
        ? AccountRecordsList(recordsList: List<AccountRecord>.empty(growable: true))
        : AccountRecordsList.fromJson(data);
  }
}
