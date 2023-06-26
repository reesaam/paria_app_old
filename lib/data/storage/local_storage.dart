import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';

class AppLocalStorage {
  String keyLocalStorage = 'Local Storage';
  final _storage = GetStorage();

  static AppLocalStorage get to => Get.find();

  ///Keys
  static const _keyAccountsRecords = 'ACCOUNTS_RECORDS';

  void clearStorage() {
    _storage.remove(_keyAccountsRecords);
  }

  Future<void> saveAccountsRecords(List<AccountRecord> listRecords) async =>
      await _storage.write(_keyAccountsRecords, listRecords);

  List<AccountRecord>? loadAccountsRecords() {
    List data = _storage.read(_keyAccountsRecords);
    return List.generate(data.length, (index) => AccountRecord.fromJson(data[index]));
  }
}
