import 'package:get/get.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on Rx<AppContactsList> {
  void get saveOnStorage async => await AppLocalStorage.to.saveContacts(value);
}

extension ContactFunctions on Rx<AppContactsList> {
  addContact(AppContact contact) {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.add(contact);
    value.contactsList = contacts;
    defaultSortFunction;
    saveOnStorage;
    refresh();
  }

  editContact(AppContact prevContact, AppContact contact) {
    appDebugPrint('previous contact: $prevContact');
    appDebugPrint('current contact: $contact');
    removeContact(prevContact);
    addContact(contact);
    appDebugPrint(" List($count):$membersList");
    defaultSortFunction;
    saveOnStorage;
    refresh();
  }

  removeContact(AppContact contact) {
    membersList.remove(contact);
    saveOnStorage;
    refresh();
  }
}

extension SortContacts on Rx<AppContactsList> {
  void get defaultSortFunction => sortFirstName;

  void get sortFirstName {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(membersList);
    contacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    value.contactsList = contacts;
  }
}

extension Details on Rx<AppContactsList> {
  List<AppContact> get membersList => value.contactsList;
  int get count => membersList.length;
  bool get isEmpty => membersList.isEmpty;
}

extension ListFunctions on Rx<AppContactsList> {
  clearContactsList() {
    membersList.clear();
    saveOnStorage;
    refresh();
  }
}