import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/app/components/contacts_components/contacts_add_edit_contact_component.dart';
import 'package:paria_app/app/components/contacts_components/contacts_contact_page_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/app_extensions/extensions_contacts_list.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class ContactsController extends CoreController {
  Rx<AppContactsList> listContacts = AppContactsList(contactsList: List<AppContact>.empty(growable: true)).obs;
  AppContact? selectedContact;

  @override
  void dataInit() {
    listContacts.value = AppLocalStorage.to.loadContacts();
    appDebugPrint('Contacts Count: ${listContacts.count()}');
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.contacts;
  }

  @override
  void onInitFunction() {
    listContacts.defaultSortFunction();
    listContacts.listen((data) => onInitFunction());
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  clearContactsList() => listContacts.clearContactsList();

  addContactFunction() async {
    AppContact? contact =
        await AppContactsAddOrEditContactComponent().addContact();
    contact == null
        ? null
        : {
            listContacts.addContact(contact),
            appDebugPrint('Contact Added: $contact')
          };
  }

  showContactFunction(AppContact contact) async {
    Get.back();
    await ContactPageComponent().showContact(contact);
  }

  editContactFunction(AppContact prevContact) async {
    Get.back();
    AppContact? contact = await AppContactsAddOrEditContactComponent()
        .editContact(prevContact);
    appDebugPrint('Contact is Empty: ${contact!.isEmpty()}');
    contact.isEmpty()
        ? null
        : {
            listContacts.editContact(prevContact, contact),
            appDebugPrint('Contact Edited: $contact')
          };
    appDebugPrint('Contact Edited: $contact');
  }

  removeContactFunction(AppContact contact) {
    Get.back();
    listContacts.removeContact(contact);
    appDebugPrint('Contact Removed: $contact');
  }
}
