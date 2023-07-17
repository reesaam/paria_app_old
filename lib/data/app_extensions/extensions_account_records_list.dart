import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on Rx<AccountRecordsList> {
  saveOnStorage() async => await AppLocalStorage.to.saveAccountsRecords(value);
}

extension AddRecord on Rx<AccountRecordsList> {
  addRecord(AppAccountRecord record) {
    List<AppAccountRecord> records = List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList());
    records.add(record);
    defaultSortFunction();
    value.recordsList = records;
    saveOnStorage();
    refresh();
  }
}

extension ClearRecord on Rx<AccountRecordsList> {
  clearRecord(AppAccountRecord record) {
    membersList().remove(record);
    membersList().add(record.copyWith(cleared: true));
    defaultSortFunction();
    saveOnStorage();
    refresh();
  }

  unClearRecord(record) {
    membersList().remove(record);
    membersList().add(record.copyWith(cleared: false));
    defaultSortFunction();
    saveOnStorage();
    refresh();
  }
}

extension RemoveRecord on Rx<AccountRecordsList> {
  removeRecord(AppAccountRecord record) {
    membersList().remove(record);
    saveOnStorage();
    refresh();
  }
}

extension SortRecords on Rx<AccountRecordsList> {
  defaultSortFunction() => sortByContact();

  sortByDateTime() {
    List<AppAccountRecord> records = List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList());
    records.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
    value.recordsList = records;
  }

  sortByContact() {
    List<AppAccountRecord> records = List<AppAccountRecord>.empty(growable: true);
    records.addAll(value.recordsList);
    records
        .sort((a, b) => a.contact!.firstName!.compareTo(b.contact!.firstName!));
    value.recordsList = records;
  }
}

extension Sum on Rx<AccountRecordsList> {
  calculateSum(bool clearedIncluded) {
    int balance = 0;
    int count = 0;
    for (AppAccountRecord record in membersList()) {
      clearedIncluded
          ? {balance += record.amount!, count++}
          : record.cleared!
              ? null
              : {balance += record.amount!, count++};
    }
    return AccountBalance(balance: balance, count: count);
  }
}

extension Contacts on Rx<AccountRecordsList> {
  countContacts(bool clearedIncluded) {
    List<AppContact> list = List<AppContact>.empty(growable: true);
    for (AppAccountRecord record in membersList()) {
      if (!list.any((element) =>
          element.firstName == record.contact!.firstName &&
          element.lastName == record.contact!.lastName)) {
        clearedIncluded
            ? list.add(record.contact!)
            : record.cleared!
                ? null
                : list.add(record.contact!);
      }
    }
    return list.length;
  }
}

extension Details on Rx<AccountRecordsList> {
  membersList() => value.recordsList;
  count() => value.recordsList.length;
  isEmpty() => value.recordsList.isEmpty;
}

extension ClearRecordsList on Rx<AccountRecordsList> {
  clearRecordsList() {
    value.recordsList.clear();
    saveOnStorage();
    refresh();
  }
}
