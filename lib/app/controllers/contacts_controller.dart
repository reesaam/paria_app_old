import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';

import '../../core/app_core_functions.dart';
import '../../core/elements/core_controller.dart';
import '../../data/data_models/core_data_models/app_contact/app_contact.dart';
import '../../data/resources/app_page_details.dart';
import '../components/contacts_components/contacts_add_edit_contact_component.dart';
import '../components/contacts_components/contacts_contact_page_component.dart';

class ContactsController extends CoreController {
  Rx<AppContactsList> listContacts = AppContactsList(contactsList: List<AppContact>.empty(growable: true)).obs;
  AppContact? selectedContact;

  @override
  void dataInit() {
    listContacts = AppContactsList().loadFromStorage.obs;
    appDebugPrint('Contacts Count: ${listContacts.count}');
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.contacts;
  }

  @override
  void onInitFunction() {
    listContacts.defaultSortFunction;
    listContacts.listen((data) => onInitFunction());
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    saveAppData();
    listContacts.close();
  }

  void clearContactsList() => listContacts.clearContactsList();

  void addContactFunction() async {
    AppContact? contact =
        await AppContactsAddOrEditContactComponent().addContact();
    contact == null
        ? null
        : {
            listContacts.addContact(contact),
            appDebugPrint('Contact Added: $contact')
          };
  }

  void showContactFunction(AppContact contact) async {
    Get.back();
    await ContactPageComponent().showContact(contact);
  }

  void editContactFunction(AppContact prevContact) async {
    Get.back();
    AppContact? contact = await AppContactsAddOrEditContactComponent()
        .editContact(prevContact);
    appDebugPrint('Contact is Empty: ${contact!.isEmpty}');
    contact.isEmpty
        ? null
        : {
            listContacts.editContact(prevContact, contact),
            appDebugPrint('Contact Edited: $contact')
          };
    appDebugPrint('Contact Edited: $contact');
  }

  void removeContactFunction(AppContact contact) {
    Get.back();
    listContacts.removeContact(contact);
    appDebugPrint('Contact Removed: $contact');
  }
}
