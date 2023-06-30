import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on Rx<AccountRecordsList> {
  saveOnStorage() async {
    await AppLocalStorage.to.saveAccountsRecords(value);
  }
}

extension AddRecord on Rx<AccountRecordsList> {
  addRecord(AccountRecord record) {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(value.recordsList);
    records.add(record);
    defaultSortFunction();
    value.recordsList = records;
    saveOnStorage();
    refresh();
  }
}

extension ClearRecord on Rx<AccountRecordsList> {
  clearRecord(AccountRecord record) {
    value.recordsList.remove(record);
    value.recordsList.add(record.copyWith(cleared: true));
    defaultSortFunction();
    saveOnStorage();
    refresh();
  }

  unClearRecord(record) {
    value.recordsList.remove(record);
    value.recordsList.add(record.copyWith(cleared: false));
    defaultSortFunction();
    saveOnStorage();
    refresh();
  }
}

extension RemoveRecord on Rx<AccountRecordsList> {
  removeRecord(AccountRecord record) {
    value.recordsList.remove(record);
    saveOnStorage();
    refresh();
  }
}

extension SortRecords on Rx<AccountRecordsList> {
  defaultSortFunction() => sortByContact();

  sortByDateTime() {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(value.recordsList);
    records.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
    value.recordsList = records;
  }

  sortByContact() {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(value.recordsList);
    records.sort((a, b) => a.contact!.firstName!.compareTo(b.contact!.firstName!));
    value.recordsList = records;
  }
}

extension Sum on Rx<AccountRecordsList> {
  calculateSum() {
    int sum = 0;
    for (AccountRecord r in value.recordsList) {
      sum += r.amount!;
    }
    return sum;
  }

  calculateSumToString() => calculateSum().toString();
}