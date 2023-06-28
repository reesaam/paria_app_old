import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AppContactsAddNewContactComponent {
  late List<AppContact> _listContacts;

  //TextEditing Controllers
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerMobile = TextEditingController();

  Widget _addNewContactDialogWidget() => Form(
        child: Column(children: [
          AppTextField(
              controller: _controllerFirstName,
              label: AppTexts.contactsAddNewContactFirstNameTitle,
              hint: AppTexts.contactsAddNewContactFirstNameHint,
              icon: Icons.person),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerLastName,
              label: AppTexts.contactsAddNewContactLastNameTitle,
              hint: AppTexts.contactsAddNewContactLastNameHint,
              icon: Icons.person),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerMobile,
              label: AppTexts.contactsAddNewContactMobileTitle,
              hint: AppTexts.contactsAddNewContactMobileHint,
              icon: Icons.phone_android_outlined),
        ]),
      );

  _addContact() async {
    AppContact contact = AppContact(
        firstName: _controllerFirstName.text ?? '',
        lastName: _controllerLastName.text ?? '',
        mobile: _controllerMobile.text ?? '');
    _listContacts.add(contact);
    _listContacts.sort();
    await AppLocalStorage.to.saveContactsRecords(_listContacts);
    Get.back();
  }

  addNewContact(List<AppContact> list) {
    _listContacts = list;
    AppDialogs.mainAppDialogWithOkCancel(AppTexts.contactsAddNewContactTitle,
        _addNewContactDialogWidget(), _addContact);
  }
}
