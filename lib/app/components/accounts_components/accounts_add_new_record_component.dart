import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AppAccountsAddNewRecordComponent {
  late List<AccountRecord> listRecords;

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
              icon: Icons.person),
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

  _addRecord() async {
    _controllerAddNewRecordDateTime.text = DateTime.now().toString();
    AccountRecord record = AccountRecord(
        contact: AppContact(firstName: _controllerAddNewRecordContact.text),
        amount: int.parse(_controllerAddNewRecordAmount.text),
        title: _controllerAddNewRecordTitle.text,
        dateTime: DateTime.parse(_controllerAddNewRecordDateTime.text),
        cleared: false);
    listRecords.add(record);
    await AppLocalStorage.to.saveAccountsRecords(listRecords);
    Get.back();
    Get.reset();
  }

  addNewAccountsRecord(List<AccountRecord> list) {
    listRecords = list;
    AppDialogs.mainAppDialogWithOkCancel(AppTexts.accountsAddNewRecordTitle,
        _addNewAccountsRecordDialogWidget(), _addRecord);
  }
}
