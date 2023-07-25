import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class ChooseContactComponent {
  final AppContactsList _listContacts = AppContactsList().loadFromStorage;
  AppContact? _selectedContact;

  Widget _chooseContactItem(AppContact contact) => InkWell(
      onTap: () => {_selectedContact = contact, Get.back()},
      child: Container(
        alignment: Alignment.centerLeft,
        padding: AppPaddings.accountsSelectContactList,
        child: Text(contact.getContactFullName,
            style: AppTextStyles.contactsChooseContact),
      ));

  Widget _chooseContactForm() => Form(
      child: Column(
          children: List.generate(
              _listContacts.contactsList.length,
              (index) =>
                  _chooseContactItem(_listContacts.contactsList[index]))));

  Future<AppContact?> chooseContact() async {
    await AppDialogs.appBottomDialogWithCancel(
        AppTexts.accountsAddRecordChooseContact, _chooseContactForm());
    return _selectedContact;
  }
}
