import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/contacts_components/contacts_add_new_contact_component.dart';
import 'package:paria_app/app/components/contacts_components/contacts_contact_page_component.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class ContactsController extends CoreController {
  Rx<AppContactsList> listContacts = const AppContactsList().obs;

  @override
  void dataInit() {
    listContacts.value = AppLocalStorage.to.loadContactsRecords();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.contacts;
  }

  @override
  void onInitFunction() {
    sortContactsList();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void sortContactsList() {}
    // listContacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));

  void addContactFunction() {}
      // AppContactsAddNewContactComponent().addNewContact(listContacts);

  void showContactFunction(AppContact contact) =>
      ContactPageComponent().showContact(contact);

  // int calculateSum() {
  //   int sum = 0;
  //   for (AccountRecord r in listContacts.value) {
  //     sum += r.amount!;
  //   }
  //   return sum;
  // }
}
