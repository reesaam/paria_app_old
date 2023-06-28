import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

class AppLocalStorage {
  final String _keyLocalStorage = 'Local Storage';
  final _storage = GetStorage();

  static AppLocalStorage get to => Get.find();

  // List emptyList = List.empty(growable: true);

  // dynamic emptyList(T) => List<T>.empty(growable: true);

  ///Keys
  final _keyContacts = 'CONTACTS';
  final _keyAccountsRecords = 'ACCOUNTS_RECORDS';

  void clearStorage() {
    _storage.remove(_keyContacts);
    _storage.remove(_keyAccountsRecords);
  }

  ///Contacts
  Future<void> saveContactsRecords(List<AppContact> listContacts) async =>
      await _storage.write(_keyContacts, listContacts);

  List<AppContact>? loadContactsRecords() {
    dynamic data = _storage.read(_keyContacts);
    return data == null
        ? List.empty(growable: true)
        : List.generate(
            data.length, (index) => AppContact.fromJson(data[index]));
  }

  ///Accounts
  Future<void> saveAccountsRecords(List<AccountRecord> listRecords) async =>
      await _storage.write(_keyAccountsRecords, listRecords);

  List<AccountRecord>? loadAccountsRecords() {
    dynamic data = _storage.read(_keyAccountsRecords);
    return data == null
        ? List.empty(growable: true)
        : List.generate(
            data.length, (index) => AccountRecord.fromJson(data[index]));
  }
}
