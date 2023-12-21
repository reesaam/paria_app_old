import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';

import '../../core/app_core_functions.dart';
import '../data_models/accounts_data_models/account_balance/account_balance.dart';
import '../data_models/accounts_data_models/account_records/account_record.dart';
import '../data_models/core_data_models/app_contact/app_contact.dart';
import '../storage/app_local_storage.dart';

///Save Storage
extension RxStorage on Rx<AppAccountRecordsList> {
  void saveOnStorage() async => value.saveOnStorage();
}

extension Storage on AppAccountRecordsList {
  void saveOnStorage() async =>
      await AppLocalStorage.to.saveAccountsRecords(this);
  AppAccountRecordsList get loadFromStorage =>
      AppLocalStorage.to.loadAccountsRecords();
}

///Add Edit Record
extension RxRecordFunction on Rx<AppAccountRecordsList> {
  addRecord(AppAccountRecord record) => {value.addRecord(record), refresh()};

  editRecord(AppAccountRecord prevRecord, AppAccountRecord record) =>
      {value.editRecord(prevRecord, record), refresh()};
}

extension RecordFunction on AppAccountRecordsList {
  addRecord(AppAccountRecord record) {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList);
    records.add(record);
    recordsList = records;
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    saveOnStorage();
  }

  editRecord(AppAccountRecord prevRecord, AppAccountRecord record) {
    appDebugPrint('previous record: $prevRecord');
    appDebugPrint('current record: $record');
    removeRecord(prevRecord);
    addRecord(record);
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    saveOnStorage();
  }
}

///Clear Record
extension RxClearRecord on Rx<AppAccountRecordsList> {
  clearRecord(AppAccountRecord record) =>
      {value.clearRecord(record), refresh()};

  unClearRecord(record) => {value.unClearRecord(record), refresh()};
}

extension ClearRecord on AppAccountRecordsList {
  clearRecord(AppAccountRecord record) {
    membersList.remove(record);
    membersList.add(record.copyWith(cleared: true));
    defaultSortFunction;
    saveOnStorage();
  }

  unClearRecord(record) {
    membersList.remove(record);
    membersList.add(record.copyWith(cleared: false));
    defaultSortFunction;
    saveOnStorage();
  }
}

///Remove Record
extension RxRemoveRecord on Rx<AppAccountRecordsList> {
  removeRecord(AppAccountRecord record) =>
      {value.removeRecord(record), refresh()};
}

extension RemoveRecord on AppAccountRecordsList {
  removeRecord(AppAccountRecord record) {
    membersList.remove(record);
    saveOnStorage();
  }
}

///Sort
extension RxSortRecords on Rx<AppAccountRecordsList> {
  void get defaultSortFunction => {sortByContact, refresh()};
  void get sortByDateTime => {value.sortByDateTime, refresh()};
  void get sortByContact => {value.sortByContact, refresh()};
}

extension SortRecords on AppAccountRecordsList {
  void get defaultSortFunction => sortByContact;

  void get sortByDateTime {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(membersList);
    records.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
    recordsList = records;
  }

  void get sortByContact {
    List<AppAccountRecord> records =
        List<AppAccountRecord>.empty(growable: true);
    records.addAll(recordsList);
    records
        .sort((a, b) => a.contact!.firstName!.compareTo(b.contact!.firstName!));
    recordsList = records;
  }
}

///Sum
extension RxSum on Rx<AppAccountRecordsList> {
  AppAccountBalance calculateSum(bool clearedIncluded) =>
      value.calculateSum(clearedIncluded);
}

extension Sum on AppAccountRecordsList {
  AppAccountBalance calculateSum(bool clearedIncluded) {
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

///Contacts
extension RxContacts on Rx<AppAccountRecordsList> {
  countContacts(bool clearedIncluded) => value.countContacts(clearedIncluded);
}

extension Contacts on AppAccountRecordsList {
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

///Records' Contact
extension RxContactRecords on Rx<AppAccountRecordsList> {
  List<AppAccountRecord> getContactRecords(
          AppContact contact, bool clearedIncluded) =>
      value.getContactRecords(contact, clearedIncluded);
}

extension ContactRecords on AppAccountRecordsList {
  List<AppAccountRecord> getContactRecords(
      AppContact contact, bool clearedIncluded) {
    List<AppAccountRecord> list = List<AppAccountRecord>.empty(growable: true);
    for (AppAccountRecord record in membersList) {
      record.contact.equalTo(contact) && record.cleared != true
          ? list.add(record)
          : null;
    }
    return list;
  }
}

///Details
extension RxDetails on Rx<AppAccountRecordsList> {
  List<AppAccountRecord> get membersList => value.membersList;
  int get count => value.count;
  bool get isEmpty => value.isEmpty;
}

extension Details on AppAccountRecordsList {
  List<AppAccountRecord> get membersList => recordsList;
  int get count => recordsList.length;
  bool get isEmpty => recordsList.isEmpty;
}

///Clear Records List
extension RxClearRecordsList on Rx<AppAccountRecordsList> {
  void get clearRecordsList {
    value.clearRecordsList;
    refresh();
  }
}

extension ClearRecordsList on AppAccountRecordsList {
  void get clearRecordsList {
    recordsList.clear();
    saveOnStorage();
  }
}
