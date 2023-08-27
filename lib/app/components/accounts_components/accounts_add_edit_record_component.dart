import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_date_time_picker.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/app/components/contacts_components/contacts_choose_contact_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/app_extensions/extension_account_record.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extension_int.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppAccountsAddRecordComponent {
  AppAccountRecord _record = const AppAccountRecord();
  String? _title;

  //Variables
  AppContact? _selectedContact = const AppContact();
  DateTime? _dateTime = DateTime.now();

  //TextEditing Controllers
  final TextEditingController _controllerContact = TextEditingController();
  final TextEditingController _controllerDescription = TextEditingController();
  final TextEditingController _controllerAmount = TextEditingController();
  final TextEditingController _controllerDateTime = TextEditingController();

  Widget _widgetAddOrEditAccountsRecordDialog() => Form(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppTextField(
              controller: _controllerContact,
              label: AppTexts.accountsAddRecordFieldContactTitle,
              hint: AppTexts.accountsAddRecordFieldContactHint,
              icon: Icons.person,
              suffixAction: _chooseContact),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerDescription,
              label: AppTexts.accountsAddRecordFieldTitleTitle,
              hint: AppTexts.accountsAddRecordFieldDescriptionHint,
              icon: Icons.text_snippet_outlined),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerAmount,
              label: AppTexts.accountsAddRecordFieldAmountDescription,
              hint: AppTexts.accountsAddRecordFieldAmountHint,
              icon: Icons.monetization_on_outlined,
              textInputType: TextInputType.number),
          AppSpaces.h10,
          AppTextField(
              controller: _controllerDateTime,
              label: AppTexts.accountsAddRecordFieldDateTimeTitle,
              hint: AppTexts.accountsAddRecordFieldDateTimeHint,
              icon: Icons.calendar_today_outlined,
              textInputType: TextInputType.datetime,
              suffixAction: _chooseDateTime,
              editable: false),
        ]),
      );

  _provideRecord() {
    _record = AppAccountRecord(
        contact: _selectedContact,
        amount: int.parse(_controllerAmount.text.replaceAll(',', '')),
        title: _controllerDescription.text,
        dateTime: _dateTime,
        cleared: false);
    Get.back();
  }

  _chooseContact() async {
    _selectedContact = await ChooseContactComponent().chooseContact();
    _selectedContact == null
        ? null
        : _controllerContact.text =
            '${_selectedContact!.firstName} ${_selectedContact!.lastName}';
  }

  _chooseDateTime() async {
    _dateTime = await AppDateTimePicker().defaultDatetimePicker();
    _controllerDateTime.text = _provideDateTimeText();
  }

  String _provideDateTimeText() {
    String text = '${_dateTime!.toDateFormat}${_additionalText()}';
    appDebugPrint('DATE TIME CHOSEN: ${_dateTime!.toDateTimeFormat}');
    return text;
  }

  String _additionalText() =>
      _dateTime!.toDateFormat == DateTime.now().toDateFormat ? ' - Today' : '';

  addRecord() async {
    _title = AppTexts.accountsAddRecordTitle;
    _dateTime = DateTime.now();
    _controllerDateTime.text = _provideDateTimeText();
    await _raiseModal();
    appDebugPrint(_record.isEmpty
        ? 'Add Record Canceled'
        : {
            'Provided Record: $_record',
            appDebugPrint('Add Record Modal Closed')
          });
    saveAppData();
    return _record.isEmpty ? null : _record;
  }

  editRecord(AppAccountRecord prevRecord) async {
    _title = AppTexts.accountsEditRecordTitle;
    _selectedContact = prevRecord.contact;

    ///Controllers
    _controllerContact.text = prevRecord.contact!.getContactFullName;
    _controllerDescription.text = prevRecord.title ?? '';
    _controllerAmount.text = prevRecord.amount.toCurrency;
    _controllerDateTime.text = _provideDateTimeText();

    await _raiseModal();
    _provideRecord();

    appDebugPrint(_record.equalTo(prevRecord)
        ? 'Edit Record Canceled'
        : {'Record: $_record', appDebugPrint('Edit Record Modal Closed')});

    saveAppData();
    return _record.equalTo(prevRecord) ? null : _record;
  }

  _raiseModal() async => await AppDialogs.appBottomDialogWithOkCancel(
      _title!, _widgetAddOrEditAccountsRecordDialog(), _provideRecord, false);
}
