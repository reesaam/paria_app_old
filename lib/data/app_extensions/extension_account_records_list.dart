import 'dart:ffi';

import 'package:get/get.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on AppAccountRecordsList {
  void saveOnStorage() async =>
      await AppLocalStorage.to.saveAccountsRecords(this);
  AppAccountRecordsList get loadFromStorage =>
      AppLocalStorage.to.loadAccountsRecords();
}

extension RxRecordFunction on Rx<AppAccountRecordsList> {
  addRecord(AppAccountRecord record) {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList);
    records.add(record);
    value.recordsList = records;
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }

  editRecord(AppAccountRecord prevRecord, AppAccountRecord record) {
    appDebugPrint('previous record: $prevRecord');
    appDebugPrint('current record: $record');
    removeRecord(prevRecord);
    addRecord(record);
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }
}

extension RxClearRecord on Rx<AppAccountRecordsList> {
  clearRecord(AppAccountRecord record) {
    membersList.remove(record);
    membersList.add(record.copyWith(cleared: true));
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }

  unClearRecord(record) {
    membersList.remove(record);
    membersList.add(record.copyWith(cleared: false));
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }
}

extension RxRemoveRecord on Rx<AppAccountRecordsList> {
  removeRecord(AppAccountRecord record) {
    membersList.remove(record);
    value.saveOnStorage();
    refresh();
  }
}

extension RxSortRecords on Rx<AppAccountRecordsList> {
  void get defaultSortFunction => sortByContact;

  void get sortByDateTime {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList);
    records.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
    value.recordsList = records;
  }

  void get sortByContact {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(value.recordsList);
    records
        .sort((a, b) => a.contact!.firstName!.compareTo(b.contact!.firstName!));
    value.recordsList = records;
  }
}

extension RxSum on Rx<AppAccountRecordsList> {
  calculateSum(bool clearedIncluded) {
    int balance = 0;
    int count = 0;
    for (AppAccountRecord record in membersList) {
      clearedIncluded
          ? {balance += record.amount!, count++}
          : record.cleared!
              ? null
              : {balance += record.amount!, count++};
    }
    return AppAccountBalance(balance: balance, count: count);
  }
}

extension RxContacts on Rx<AppAccountRecordsList> {
  countContacts(bool clearedIncluded) {
    List<AppContact> list = List<AppContact>.empty(growable: true);
    for (AppAccountRecord record in membersList) {
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

extension RxDetails on Rx<AppAccountRecordsList> {
  List<AppAccountRecord> get membersList => value.recordsList;
  int get count => value.recordsList.length;
  bool get isEmpty => value.recordsList.isEmpty;
}

extension RxClearRecordsList on Rx<AppAccountRecordsList> {
  void get clearRecordsList {
    value.recordsList.clear();
    value.saveOnStorage();
    refresh();
  }
}
