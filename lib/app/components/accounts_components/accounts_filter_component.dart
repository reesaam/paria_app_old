import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_accounts_filter.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';

import '../../../core/app_core_functions.dart';
import '../../../data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';
import '../../../data/data_models/core_data_models/app_contact/app_contact.dart';
import '../../../data/resources/app_spaces.dart';
import '../../../data/resources/app_texts.dart';
import '../general_components/app_date_time_picker.dart';
import '../main_components/app_dialogs.dart';
import '../general_components/app_panel.dart';
import '../general_components/app_text_field.dart';
import '../contacts_components/contacts_choose_contact_component.dart';

class AppAccountsFilterComponent {
  //Variables
  AppAccountsFilter filter = const AppAccountsFilter();
  AppContact? selectedContact;
  DateTime? dateTimeUp;
  DateTime? dateTimeDown;

  //TextEditing Controllers
  final TextEditingController _controllerFilterContact =
      TextEditingController();
  final TextEditingController _controllerFilterDescription =
      TextEditingController();
  final TextEditingController _controllerFilterAmountUp =
      TextEditingController();
  final TextEditingController _controllerFilterAmountDown =
      TextEditingController();
  final TextEditingController _controllerFilterDateTimeUp =
      TextEditingController();
  final TextEditingController _controllerFilterDateTimeDown =
      TextEditingController();

  Widget _widgetFilterDialog() => Form(
          child: Column(children: [
        AppTextField(
            controller: _controllerFilterContact,
            label: AppTexts.accountsAddFilterFieldContactTitle,
            hint: AppTexts.accountsAddFilterFieldContactHint,
            icon: Icons.person,
            suffixAction: _chooseContact),
        AppSpaces.h20,
        AppTextField(
            controller: _controllerFilterDescription,
            label: AppTexts.accountsAddFilterFieldDescriptionTitle,
            hint: AppTexts.accountsAddFilterFieldDescriptionHint,
            icon: Icons.text_snippet_outlined),
        AppSpaces.h20,
        AppPanel(
            title: AppTexts.accountsAddFilterPanelTitleAmount,
            innerChild: Column(children: [
              AppTextField(
                  controller: _controllerFilterAmountDown,
                  label: AppTexts.from,
                  hint: AppTexts.accountsAddFilterFieldAmountFromHint,
                  icon: Icons.monetization_on_outlined,
                  textInputType: TextInputType.number),
              AppSpaces.h10,
              AppTextField(
                  controller: _controllerFilterAmountUp,
                  label: AppTexts.to,
                  hint: AppTexts.accountsAddFilterFieldAmountToHint,
                  icon: Icons.monetization_on_outlined,
                  textInputType: TextInputType.number),
            ])),
        AppSpaces.h20,
        AppPanel(
            title: AppTexts.accountsAddFilterPanelTitleDateTime,
            innerChild: Column(children: [
              AppTextField(
                  controller: _controllerFilterDateTimeDown,
                  label: AppTexts.from,
                  hint: AppTexts.accountsAddFilterFieldDateTimeFromHint,
                  icon: Icons.calendar_today_outlined,
                  textInputType: TextInputType.datetime,
                  suffixAction: _chooseDateTimeDown,
                  editable: false),
              AppSpaces.h10,
              AppTextField(
                  controller: _controllerFilterDateTimeUp,
                  label: AppTexts.to,
                  hint: AppTexts.accountsAddFilterFieldDateTimeToHint,
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
        : _controllerFilterContact.text =
            '${selectedContact!.firstName} ${selectedContact!.lastName}';
  }

  _chooseDateTimeUp() async {
    dateTimeUp = await AppDateTimePicker().defaultDatetimePicker();
    _controllerFilterDateTimeUp.text = '${dateTimeUp!.toDateFormat}${_additionalText(dateTimeUp!)}';
    appDebugPrint('DATE TIME CHOSEN: ${dateTimeUp!.toDateTimeFormat}');
  }

  _chooseDateTimeDown() async {
    dateTimeDown = await AppDateTimePicker().defaultDatetimePicker();
    _controllerFilterDateTimeDown.text = '${dateTimeDown!.toDateFormat}${_additionalText(dateTimeDown!)}';
    appDebugPrint('DATE TIME CHOSEN: ${dateTimeDown!.toDateTimeFormat}');
  }

  String _additionalText(DateTime dateTime) =>
      dateTime.equalTo(DateTime.now()) ? ' - Today' : '';

  _fillFields(bool withContact) {
    withContact ? _controllerFilterContact.text = '${filter.contact!.firstName ?? ''} ${filter.contact!.lastName}' : null;
    _controllerFilterDescription.text = filter.description ?? '';
    _controllerFilterAmountDown.text = filter.amountDown == null ? '' : filter.amountDown.toString();
    _controllerFilterAmountUp.text = filter.amountUp == null ? '' : filter.amountUp.toString();
    _controllerFilterDateTimeDown.text = filter.dateTimeDown == null ? '' : filter.dateTimeDown!.toDateFormat;
    _controllerFilterDateTimeUp.text = filter.dateTimeUp == null ? '' : filter.dateTimeUp!.toDateFormat;
  }

  _provideFilter() {
    filter = AppAccountsFilter(
      contact: selectedContact ?? selectedContact,
      description: _controllerFilterDescription.text == '' ? null : _controllerFilterDescription.text,
      amountDown: _controllerFilterAmountDown.text == '' ? null : int.parse(_controllerFilterAmountDown.text),
      amountUp: _controllerFilterAmountUp.text == '' ? null : int.parse(_controllerFilterAmountUp.text),
      dateTimeDown: dateTimeDown,
      dateTimeUp: dateTimeUp,
    );
    Get.back();
    appDebugPrint('Provided Filter: $filter');
  }

  Future<AppAccountsFilter> showFilterModal(
      AppAccountsFilter importedFilter) async {
    filter = importedFilter;

    filter.isEmpty ? null : _fillFields(filter.contact != null);

    await AppDialogs.appBottomDialogWithOkCancel(
        AppTexts.accountAddFilterTitle, _widgetFilterDialog(), _provideFilter, false);
    appDebugPrint(filter.isEmpty
        ? 'Filter Canceled'
        : {'Filter: $filter', appDebugPrint('Add Filter Modal Closed')});
    return filter;
  }
}
