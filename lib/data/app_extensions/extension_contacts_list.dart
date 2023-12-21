import 'package:get/get.dart';

import '../../core/app_core_functions.dart';
import '../data_models/core_data_models/app_contact/app_contact.dart';
import '../storage/app_local_storage.dart';

extension Storage on AppContactsList {
  void saveOnStorage() async => await AppLocalStorage.to.saveContacts(this);
  AppContactsList get loadFromStorage => AppLocalStorage.to.loadContacts();
}

extension RxContactFunctions on Rx<AppContactsList> {
  addContact(AppContact contact) {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.add(contact);
    value.contactsList = contacts;
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }

  _editRecords(AppContact prevContact, AppContact contact) {
    AppAccountRecordsList listRecords = AppAccountRecordsList().loadFromStorage;
    for (AppAccountRecord record in listRecords.recordsList) {
      if (record.contact.equalTo(prevContact)) {
        listRecords.editRecord(record, record.copyWith(contact: contact));
      }
    }
    listRecords.saveOnStorage();
    refresh();
  }

  editContact(AppContact prevContact, AppContact contact) {
    appDebugPrint('previous contact: $prevContact');
    appDebugPrint('current contact: $contact');
    removeContact(prevContact);
    addContact(contact);
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    value.saveOnStorage();
    refresh();
  }

  removeContact(AppContact contact) {
    membersList.remove(contact);
    value.saveOnStorage();
    refresh();
  }
}

extension RxSortContacts on Rx<AppContactsList> {
  void get defaultSortFunction => sortFirstName;

  void get sortFirstName {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    value.contactsList = contacts;
  }
}

extension RxDetails on Rx<AppContactsList> {
  List<AppContact> get membersList => value.contactsList;
  int get count => membersList.length;
  bool get isEmpty => membersList.isEmpty;
}

extension RxListFunctions on Rx<AppContactsList> {
  clearContactsList() {
    membersList.clear();
    value.saveOnStorage();
    refresh();
  }
}