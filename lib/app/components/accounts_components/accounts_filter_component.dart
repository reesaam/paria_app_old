import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_date_time_picker.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_panel.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/app/components/contacts_components/contacts_choose_contact_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/app_extensions/extension_accounts_filter.dart';
import 'package:paria_app/data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppAccountsFilterComponent {
  //Variables
  AppAccountsFilter filter = const AppAccountsFilter();
  AppContact? selectedContact = const AppContact();
  DateTime? dateTimeUp = DateTime.now();
  DateTime? dateTimeDown = DateTime.now();

  //TextEditing Controllers
  final TextEditingController _controllerAddNewRecordContact =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordDescription =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordAmountUp =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordAmountDown =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordDateTimeUp =
      TextEditingController();
  final TextEditingController _controllerAddNewRecordDateTimeDown =
      TextEditingController();

  Widget _widgetFilterDialog() => Form(
          child: Column(children: [
        AppTextField(
            controller: _controllerAddNewRecordContact,
            label: AppTexts.accountsAddRecordFieldContactTitle,
            hint: AppTexts.accountsAddRecordFieldContactHint,
            icon: Icons.person,
            suffixAction: _chooseContact),
        AppSpaces.h20,
        AppTextField(
            controller: _controllerAddNewRecordDescription,
            label: AppTexts.accountsAddRecordFieldTitleTitle,
            hint: AppTexts.accountsAddRecordFieldDescriptionHint,
            icon: Icons.text_snippet_outlined),
        AppSpaces.h20,
        AppPanel(
            title: AppTexts.accountsFilterPanelTitleAmount,
            innerChild: Column(children: [
              AppTextField(
                  controller: _controllerAddNewRecordAmountDown,
                  label: AppTexts.from,
                  hint: AppTexts.accountsAddRecordFieldAmountHint,
                  icon: Icons.monetization_on_outlined,
                  textInputType: TextInputType.number),
              AppSpaces.h10,
              AppTextField(
                  controller: _controllerAddNewRecordAmountUp,
                  label: AppTexts.to,
                  hint: AppTexts.accountsAddRecordFieldAmountHint,
                  icon: Icons.monetization_on_outlined,
                  textInputType: TextInputType.number),
            ])),
        AppSpaces.h20,
        AppPanel(
            title: AppTexts.accountsFilterPanelTitleDateTime,
            innerChild: Column(children: [
              AppTextField(
                  controller: _controllerAddNewRecordDateTimeDown,
                  label: AppTexts.from,
                  hint: AppTexts.accountsAddRecordFieldDateTimeHint,
                  icon: Icons.calendar_today_outlined,
                  textInputType: TextInputType.datetime,
                  suffixAction: _chooseDateTimeDown,
                  editable: false),
              AppSpaces.h10,
              AppTextField(
                  controller: _controllerAddNewRecordDateTimeUp,
                  label: AppTexts.to,
                  hint: AppTexts.accountsAddRecordFieldDateTimeHint,
                  icon: Icons.calendar_today_outlined,
                  textInputType: TextInputType.datetime,
                  suffixAction: _chooseDateTimeUp,
                  editable: false),
            ])),
      ]));

  _chooseContact() async {
    selectedContact = await ChooseContactComponent().chooseContact();
    selectedContact == null
        ? null
        : _controllerAddNewRecordContact.text =
            '${selectedContact!.firstName} ${selectedContact!.lastName}';
  }

  _chooseDateTimeUp() async =>
      await _chooseDateTime(dateTimeUp, _controllerAddNewRecordDateTimeUp);
  _chooseDateTimeDown() async =>
      await _chooseDateTime(dateTimeDown, _controllerAddNewRecordDateTimeDown);

  _chooseDateTime(DateTime? dateTime, TextEditingController controller) async {
    dateTime = await AppDateTimePicker().defaultDatetimePicker();
    controller.text =
        '${AppTextProvider.formatDate(dateTime!)}${_additionalText(dateTime)}';
    appDebugPrint(
        'DATE TIME CHOSEN: ${AppTextProvider.formatDateTime(dateTime)}');
  }

  String _additionalText(DateTime? dateTime) =>
      AppTextProvider.formatDate(dateTime!) ==
              AppTextProvider.formatDate(DateTime.now())
          ? ' - Today'
          : '';

  _provideFilter() {
    filter = AppAccountsFilter(
      contact: selectedContact,
      description: _controllerAddNewRecordDescription.text,
      amountDown: int.tryParse(_controllerAddNewRecordAmountDown.text),
      amountUp: int.tryParse(_controllerAddNewRecordAmountUp.text),
      dateTimeDown: dateTimeDown,
      dateTimeUp: dateTimeUp,
    );
    Get.back();
    appDebugPrint('Provide Filter');
  }

  Future<AppAccountsFilter> showFilterModal() async {
    await AppDialogs.appBottomDialogWithOkCancel(
        AppTexts.filter, _widgetFilterDialog(), _provideFilter);
    appDebugPrint(filter.isEmpty()
        ? 'Filter Canceled'
        : {'Filter: $filter', appDebugPrint('Add Filter Modal Closed')});
    return filter;
  }
}
