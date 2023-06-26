import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_item/account_item.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppAccountsAddNewRecordComponent {
  final TextEditingController _controllerAddNewRecordContact =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordTitle =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordAmount =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordDateTime =
      TextEditingController();

  Widget _addNewAccountsRecordDialogWidget() => Padding(
      padding: AppPaddings.accountsAddNewRecordModal,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(AppTexts.accountsAddNewRecordTitle,
            style: AppTextStyles.accountsAddNewRecordTitle),
        AppSpaces.h20,
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
            icon: Icons.monetization_on_outlined),
        AppSpaces.h10,
        AppTextField(
            controller: _controllerAddNewRecordDateTime,
            label: AppTexts.accountsAddNewRecordFieldDateTimeTitle,
            hint: AppTexts.accountsAddNewRecordFieldDateTimeHint,
            icon: Icons.calendar_today_outlined),
      ]));

  Widget _addNewAccountsRecordDialogWidget2() => Form(child: _addNewAccountsRecordDialogWidget());

  AccountRecord addNewAccountsRecord() {
    AppContact contact = const AppContact(
        firstName: 'firstName', lastName: 'lastName', mobile: 'mobile');
    AccountRecord record;
    AppDialogs.mainAppDialogWithOkCancel(_addNewAccountsRecordDialogWidget2());
    record = AccountRecord(
        contact: contact,
        amount: 100,
        title: 'title',
        dateTime: DateTime.now(),
        cleared: false);
    return record;
  }
}
