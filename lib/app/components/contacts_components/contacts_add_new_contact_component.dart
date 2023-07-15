import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppContactsAddNewContactComponent {
  AppContact? contact = const AppContact();

  //TextEditing Controllers
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerMobile = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerWebLink = TextEditingController();

  Widget _addNewContactDialogWidget() => Form(
        child: Column(children: [
          AppTextField(
              controller: _controllerFirstName,
              label: AppTexts.contactsAddNewContactFirstNameTitle,
              hint: AppTexts.contactsAddNewContactFirstNameHint,
              icon: AppIcons.person.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerLastName,
              label: AppTexts.contactsAddNewContactLastNameTitle,
              hint: AppTexts.contactsAddNewContactLastNameHint,
              icon: AppIcons.person.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerMobile,
              label: AppTexts.contactsAddNewContactMobileTitle,
              hint: AppTexts.contactsAddNewContactMobileHint,
              icon: AppIcons.mobile.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerPhone,
              label: AppTexts.contactsAddNewContactPhoneTitle,
              hint: AppTexts.contactsAddNewContactPhoneHint,
              icon: AppIcons.phone.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerEmail,
              label: AppTexts.contactsAddNewContactEmailTitle,
              hint: AppTexts.contactsAddNewContactEmailHint,
              icon: AppIcons.email.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerWebLink,
              label: AppTexts.contactsAddNewContactWebLinkTitle,
              hint: AppTexts.contactsAddNewContactWebLinkHint,
              icon: AppIcons.web.icon),
        ]),
      );

  _provideContact() {
    contact = AppContact(
        firstName: _controllerFirstName.text ?? '',
        lastName: _controllerLastName.text ?? '',
        mobile: _controllerMobile.text ?? '',
        phone: _controllerPhone.text ?? '',
        email: _controllerEmail.text ?? '',
        webLink: _controllerWebLink.text ?? '',
    );
    Get.back();
  }

  Future<AppContact?> addNewContactModal() async {
    await AppDialogs.appBottomDialogWithOkCancel(
        AppTexts.contactsAddNewContactTitle,
        _addNewContactDialogWidget(),
        _provideContact);
    appDebugPrint(contact == const AppContact()
        ? 'Add Contact Canceled'
        : {'Contact: $contact', appDebugPrint('Add Contact Modal Closed')});
    return contact == const AppContact() ? null : contact;
  }
}
