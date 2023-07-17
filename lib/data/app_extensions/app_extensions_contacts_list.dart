import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on Rx<AppContactsList> {
  saveOnStorage() async => await AppLocalStorage.to.saveContacts(value);
}

extension ContactFunctions on Rx<AppContactsList> {
  addContact(AppContact contact) {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(value.contactsList);
    contacts.add(contact);
    value.contactsList = contacts;
    defaultSortFunction();
    saveOnStorage();
    refresh();
  }

  editContact(AppContact contact) {
    value.contactsList.remove(contact);
    addContact(contact);
  }

  removeContact(AppContact contact) {
    value.contactsList.remove(contact);
    saveOnStorage();
    refresh();
  }
}

extension SortContacts on Rx<AppContactsList> {
  defaultSortFunction() => sortFirstName();

  sortFirstName() {
    List<AppContact> contacts = List<AppContact>.empty(growable: true);
    contacts.addAll(value.contactsList);
    contacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    value.contactsList = contacts;
  }
}

extension Details on Rx<AppContactsList> {
  count() => value.contactsList.length;
  isEmpty() => value.contactsList.isEmpty;
}

extension ListFunctions on Rx<AppContactsList> {
  clearContactsList() {
    value.contactsList.clear();
    saveOnStorage();
    refresh();
  }
}