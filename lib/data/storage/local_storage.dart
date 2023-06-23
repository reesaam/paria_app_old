import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_item/account_item.dart';

class LocalStorage {
  String keyLocalStorage = 'Local Storage';
  final _storage = GetStorage();

  static LocalStorage get to => Get.find();

  ///Keys
  static const keyAccountsRecords = 'ACCOUNTS_RECORDS';

  Future<void> saveAccountsRecords(List<AccountRecord> listRecords) async =>
      await _storage.write(keyAccountsRecords, listRecords);

  List<AccountRecord> readAccountsRecords() =>
      _storage.read(keyAccountsRecords);
}
