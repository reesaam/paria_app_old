import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/app/components/contacts_components/contacts_choose_contact_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AppAccountsAddNewRecordComponent {
  AccountRecord record = const AccountRecord();

  //TextEditing Controllers
  final TextEditingController _controllerAddNewRecordContact =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordTitle =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordAmount =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordDateTime =
      TextEditingController();

  Widget _addNewAccountsRecordDialogWidget() => Form(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppTextField(
              controller: _controllerAddNewRecordContact,
              label: AppTexts.accountsAddNewRecordFieldContactTitle,
              hint: AppTexts.accountsAddNewRecordFieldContactHint,
              icon: Icons.person,
              suffixAction: _chooseContact),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordTitle,
              label: AppTexts.accountsAddNewRecordFieldTitleTitle,
              hint: AppTexts.accountsAddNewRecordFieldTitleHint,
              icon: Icons.text_snippet_outlined),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordAmount,
              label: AppTexts.accountsAddNewRecordFieldAmountTitle,
              hint: AppTexts.accountsAddNewRecordFieldAmountHint,
              icon: Icons.monetization_on_outlined,
              textInputType: TextInputType.number),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordDateTime,
              label: AppTexts.accountsAddNewRecordFieldDateTimeTitle,
              hint: AppTexts.accountsAddNewRecordFieldDateTimeHint,
              icon: Icons.calendar_today_outlined,
              textInputType: TextInputType.datetime),
        ]),
      );

  _chooseContact() async {
    AppContact? selectedContact =
        await ChooseContactComponent().chooseContact();
    selectedContact == null
        ? null
        : _controllerAddNewRecordContact.text =
            '${selectedContact.firstName} ${selectedContact.lastName}';
  }

  provideRecord() {
    _controllerAddNewRecordDateTime.text = DateTime.now().toString();
    record = AccountRecord(
        contact: AppContact(firstName: _controllerAddNewRecordContact.text),
        amount: int.parse(_controllerAddNewRecordAmount.text),
        title: _controllerAddNewRecordTitle.text,
        dateTime: DateTime.parse(_controllerAddNewRecordDateTime.text),
        cleared: false);
    Get.back();
  }

  Future<AccountRecord?> addNewAccountsRecordModal() async {
    await AppDialogs.mainAppDialogWithOkCancel(
        AppTexts.accountsAddNewRecordTitle,
        _addNewAccountsRecordDialogWidget(),
        provideRecord);
    appDebugPrint(record == const AccountRecord()
        ? 'Add Record Canceled'
        : 'Record: $record');
    appDebugPrint('Add Record Modal Closed');
    return record == const AccountRecord() ? null : record;
  }
}
