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
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

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

  _chooseDateTimeUp() async =>
      await _chooseDateTime(dateTimeUp, _controllerFilterDateTimeUp);
  _chooseDateTimeDown() async =>
      await _chooseDateTime(dateTimeDown, _controllerFilterDateTimeDown);

  _chooseDateTime(DateTime? dateTime, TextEditingController controller) async {
    dateTime = await AppDateTimePicker().defaultDatetimePicker();
    controller.text =
        '${AppTextProvider.formatDate(dateTime!)}${_additionalText(dateTime)}';
    appDebugPrint(
        'DATE TIME CHOSEN: ${AppTextProvider.formatDateTime(dateTime)}');
  }

  String _additionalText(DateTime? dateTime) =>
      dateTime!.equalTo(DateTime.now()) ? ' - Today' : '';

  _fillFields(bool withContact) {
    withContact ? _controllerFilterContact.text = '${filter.contact!.firstName ?? ''} ${filter.contact!.lastName}' : null;
    _controllerFilterDescription.text = filter.description ?? '';
    _controllerFilterAmountDown.text = filter.amountDown == null ? '' : filter.amountDown.toString();
    _controllerFilterAmountUp.text = filter.amountUp == null ? '' : filter.amountUp.toString();
    _controllerFilterDateTimeDown.text = filter.dateTimeDown == null ? '' : AppTextProvider.formatDate(filter.dateTimeDown!);
    _controllerFilterDateTimeUp.text = filter.dateTimeUp == null ? '' : AppTextProvider.formatDate(filter.dateTimeUp!);
  }

  _provideFilter() {
    filter = AppAccountsFilter(
      contact: selectedContact ?? selectedContact,
      description: _controllerFilterDescription.text,
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

    filter.isEmpty() ? null : _fillFields(filter.contact != null);

    await AppDialogs.appBottomDialogWithOkCancel(
        AppTexts.accountAddFilterTitle, _widgetFilterDialog(), _provideFilter);
    appDebugPrint(filter.isEmpty()
        ? 'Filter Canceled'
        : {'Filter: $filter', appDebugPrint('Add Filter Modal Closed')});
    return filter;
  }
}
