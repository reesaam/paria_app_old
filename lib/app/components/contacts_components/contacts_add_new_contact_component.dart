import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppContactsAddNewContactComponent {
  AppContact? contact = const AppContact();

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

  AppContact _provideContact() => contact = AppContact(
      firstName: _controllerFirstName.text,
      lastName: _controllerLastName.text,
      mobile: _controllerMobile.text);

  Future<AppContact?> addNewContactModal() async {
    await AppDialogs.mainAppDialogWithOkCancel(
        AppTexts.contactsAddNewContactTitle,
        _addNewContactDialogWidget(),
        _provideContact);
    debugPrint(contact == const AppContact()
        ? 'Add Contact Canceled'
        : 'Contact: $contact');
    debugPrint('Add Contact Modal Closed');
    return contact == const AppContact() ? null : contact;
  }
}
