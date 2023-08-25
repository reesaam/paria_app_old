import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extension_string.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class ContactsBalanceController extends CoreController {
  Rx<AppContactsList> listContacts =
      AppContactsList(contactsList: List<AppContact>.empty(growable: true)).obs;
  Rx<AppAccountRecordsList> listRecords = AppAccountRecordsList(
          recordsList: List<AppAccountRecord>.empty(growable: true))
      .obs;

  Rx<AppAccountBalance> totalBalance = const AppAccountBalance().obs;

  @override
  void dataInit() {
    listContacts.value = AppContactsList().loadFromStorage;
    listRecords.value = AppAccountRecordsList().loadFromStorage;
    totalBalance.value = listRecords.calculateSum(false);
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.contactsBalance;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  showContactItemsList(AppContact contact) =>
      AppDialogs.appBottomDialogWithoutButton(
          AppTexts.accountsRecordsTableTitle, _contactRecordsList(contact), true);

  Widget _contactRecordsList(AppContact contact) => Form(
      child: Column(
          children: List.generate(
              listRecords.getContactRecords(contact, false).length,
              (index) => _contactRecordItem(
                  listRecords.getContactRecords(contact, false)[index]))));

  Widget _contactRecordItem(AppAccountRecord record) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(record.title ?? '', style: AppTextStyles.contactsBalanceItems),
        Text(record.amount.toCurrency ?? '',
            style: AppTextStyles.contactsBalanceItems),
        Text(record.dateTime == null ? '' : record.dateTime!.toDateFormat,
            style: AppTextStyles.contactsBalanceItems)
      ]);

  showNoRecordDialog() => AppDialogs.appAlertDialogWithOk(
      AppTexts.information, AppTexts.contactsBalanceNoRecord, Get.back, true);
}
