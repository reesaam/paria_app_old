import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';

import '../../core/app_core_functions.dart';
import '../data_models/core_data_models/app_contact/app_contact.dart';
import '../storage/app_local_storage.dart';

///Save Storage
extension RxStorage on Rx<AppContactsList> {
  void saveOnStorage() async => value.saveOnStorage();
}

extension Storage on AppContactsList {
  void saveOnStorage() async => await AppLocalStorage.to.saveContacts(this);
  AppContactsList get loadFromStorage => AppLocalStorage.to.loadContacts();
}

///Contact Functions
extension RxContactFunctions on Rx<AppContactsList> {
  addContact(AppContact contact) => {value.addContact(contact), refresh()};

  editContact(AppContact prevContact, AppContact contact) =>
      {value.editContact(prevContact, contact), refresh()};

  removeContact(AppContact contact) =>
      {value.removeContact(contact), refresh()};
}

extension ContactFunctions on AppContactsList {
  addContact(AppContact contact) {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.add(contact);
    contactsList = contacts;
    defaultSortFunction;
    saveOnStorage();
  }

  _editRecords(AppContact prevContact, AppContact contact) {
    AppAccountRecordsList listRecords = AppAccountRecordsList().loadFromStorage;
    for (AppAccountRecord record in listRecords.recordsList) {
      if (record.contact.equalTo(prevContact)) {
        listRecords.editRecord(record, record.copyWith(contact: contact));
      }
    }
    listRecords.saveOnStorage();
  }

  editContact(AppContact prevContact, AppContact contact) {
    appDebugPrint('previous contact: $prevContact');
    appDebugPrint('current contact: $contact');
    removeContact(prevContact);
    addContact(contact);
    _editRecords(prevContact, contact);
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    saveOnStorage();
  }

  removeContact(AppContact contact) {
    membersList.remove(contact);
    saveOnStorage();
  }
}

///Sort
extension RxSortContacts on Rx<AppContactsList> {
  void get defaultSortFunction => sortFirstName;

  void get sortFirstName => {value.sortFirstName, refresh()};
}

extension SortContacts on AppContactsList {
  void get defaultSortFunction => sortFirstName;

  void get sortFirstName {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    contactsList = contacts;
  }
}

///Details
extension RxDetails on Rx<AppContactsList> {
  List<AppContact> get membersList => value.membersList;
  int get count => value.count;
  bool get isEmpty => value.isEmpty;
}

extension Details on AppContactsList {
  List<AppContact> get membersList => contactsList;
  int get count => membersList.length;
  bool get isEmpty => membersList.isEmpty;
}

///List Functions
extension RxListFunctions on Rx<AppContactsList> {
  clearContactsList() => {value.clearContactsList(), refresh()};
}

extension ListFunctions on AppContactsList {
  clearContactsList() {
    membersList.clear();
    saveOnStorage();
  }
}