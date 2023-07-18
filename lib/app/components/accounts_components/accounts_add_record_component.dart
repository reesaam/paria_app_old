import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_date_time_picker.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/app/components/contacts_components/contacts_choose_contact_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/app_extensions/extension_account.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppAccountsAddRecordComponent {

  //Variables
  AppAccountRecord record = const AppAccountRecord();
  AppContact? selectedContact = const AppContact();
  DateTime? dateTime = DateTime.now();

  //TextEditing Controllers
  final TextEditingController _controllerAddNewRecordContact = TextEditingController();
  final TextEditingController _controllerAddNewRecordDescription = TextEditingController();
  final TextEditingController _controllerAddNewRecordAmount = TextEditingController();
  final TextEditingController _controllerAddNewRecordDateTime = TextEditingController(
          text: '${AppTextProvider.formatDate(DateTime.now())} - Today');

  Widget _widgetAddAccountsRecordDialog() => Form(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppTextField(
              controller: _controllerAddNewRecordContact,
              label: AppTexts.accountsAddRecordFieldContactTitle,
              hint: AppTexts.accountsAddRecordFieldContactHint,
              icon: Icons.person,
              suffixAction: _chooseContact),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordDescription,
              label: AppTexts.accountsAddRecordFieldTitleTitle,
              hint: AppTexts.accountsAddRecordFieldDescriptionHint,
              icon: Icons.text_snippet_outlined),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordAmount,
              label: AppTexts.accountsAddRecordFieldAmountDescription,
              hint: AppTexts.accountsAddRecordFieldAmountHint,
              icon: Icons.monetization_on_outlined,
              textInputType: TextInputType.number),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAddNewRecordDateTime,
              label: AppTexts.accountsAddRecordFieldDateTimeTitle,
              hint: AppTexts.accountsAddRecordFieldDateTimeHint,
              icon: Icons.calendar_today_outlined,
              textInputType: TextInputType.datetime,
              suffixAction: _chooseDateTime,
              editable: false),
        ]),
      );

  _chooseContact() async {
    selectedContact = await ChooseContactComponent().chooseContact();
    selectedContact == null
        ? null
        : _controllerAddNewRecordContact.text =
            '${selectedContact!.firstName} ${selectedContact!.lastName}';
  }

  String _additionalText() => AppTextProvider.formatDate(dateTime!) ==
          AppTextProvider.formatDate(DateTime.now())
      ? ' - Today'
      : '';

  _chooseDateTime() async {
    dateTime = await AppDateTimePicker().defaultDatetimePicker();
    _controllerAddNewRecordDateTime.text =
        '${AppTextProvider.formatDate(dateTime!)}${_additionalText()}';
    appDebugPrint(
        'DATE TIME CHOSEN: ${AppTextProvider.formatDateTime(dateTime!)}');
  }

  _provideRecord() {
    record = AppAccountRecord(
        contact: selectedContact,
        amount: int.parse(_controllerAddNewRecordAmount.text),
        title: _controllerAddNewRecordDescription.text,
        dateTime: dateTime,
        cleared: false);
    Get.back();
  }

  Future<AppAccountRecord?> addAccountsRecordModal() async {
    await AppDialogs.appBottomDialogWithOkCancel(
        AppTexts.accountsAddRecordTitle,
        _widgetAddAccountsRecordDialog(),
        _provideRecord);
    appDebugPrint(record.isEmpty()
        ? 'Add Record Canceled'
        : {'Provided Record: $record', appDebugPrint('Add Record Modal Closed')});
    return record.isEmpty() ? null : record;
  }
}
