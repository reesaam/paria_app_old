import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/app_extensions/app_extensions_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppContactsAddOrEditContactComponent {
  AppContact? _contact = const AppContact();
  String? title;

  //TextEditing Controllers
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerMobile = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerWebLink = TextEditingController();

  Widget _widgetAddOrEditContactDialog() => Form(
        child: Column(children: [
          AppTextField(
              controller: _controllerFirstName,
              label: AppTexts.contactsAddContactFirstNameTitle,
              hint: AppTexts.contactsAddContactFirstNameHint,
              icon: AppIcons.person.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerLastName,
              label: AppTexts.contactsAddContactLastNameTitle,
              hint: AppTexts.contactsAddContactLastNameHint,
              icon: AppIcons.person.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerMobile,
              label: AppTexts.contactsAddContactMobileTitle,
              hint: AppTexts.contactsAddContactMobileHint,
              icon: AppIcons.mobile.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerPhone,
              label: AppTexts.contactsAddContactPhoneTitle,
              hint: AppTexts.contactsAddContactPhoneHint,
              icon: AppIcons.phone.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerEmail,
              label: AppTexts.contactsAddContactEmailTitle,
              hint: AppTexts.contactsAddContactEmailHint,
              icon: AppIcons.email.icon),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerWebLink,
              label: AppTexts.contactsAddContactWebLinkTitle,
              hint: AppTexts.contactsAddContactWebLinkHint,
              icon: AppIcons.web.icon),
        ]),
      );

  _provideContact() async {
    _contact = AppContact(
      firstName: _controllerFirstName.text,
      lastName: _controllerLastName.text,
      mobile: _controllerMobile.text,
      phone: _controllerPhone.text,
      email: _controllerEmail.text,
      webLink: _controllerWebLink.text,
    );
    Get.back();
  }

  addContact() async {
    title = AppTexts.contactsAddContactTitle;

    await _raiseModal();

    appDebugPrint(_contact!.isEmpty()
        ? 'Add Contact Canceled'
        : {'Contact: $_contact', appDebugPrint('Add Contact Modal Closed')});
    return _contact!.isEmpty() ? null : _contact;
  }

  editContact(AppContact prevContact) async {
    title = AppTexts.contactsEditContactTitle;

    ///Controllers
    _controllerFirstName.text = prevContact.firstName ?? '';
    _controllerLastName.text = prevContact.lastName ?? '';
    _controllerMobile.text = prevContact.mobile ?? '';
    _controllerPhone.text = prevContact.phone ?? '';
    _controllerEmail.text = prevContact.email ?? '';
    _controllerWebLink.text = prevContact.webLink ?? '';

    await _raiseModal();
    _provideContact();

    appDebugPrint(_contact!.equalTo(prevContact)
        ? 'Edit Contact Canceled'
        : {'Contact: $_contact', appDebugPrint('Edit Contact Modal Closed')});
    appDebugPrint(_contact);
    appDebugPrint(prevContact);
    appDebugPrint(_contact!.equalTo(prevContact));
    return _contact!.equalTo(prevContact) ? null : _contact;
  }

  _raiseModal() async => await AppDialogs.appBottomDialogWithOkCancel(
      title!, _widgetAddOrEditContactDialog(), _provideContact);
}
