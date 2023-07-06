import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_new_record_component.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/app_extensions_account_records.dart';
import 'package:paria_app/data/app_extensions/app_string_extensions.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AccountsController extends CoreController {
  Rx<AccountRecordsList> listRecords =
      AccountRecordsList(recordsList: List<AccountRecord>.empty(growable: true))
          .obs;

  Rx<String> itemsSum = AppTexts.generalNotAvailableInitials.obs;
  Rx<int> itemsCount = 0.obs;
  Rx<int> itemsCountContacts = 0.obs;

  Rx<bool> showCleared = false.obs;
  Rx<String> showClearedText =
      AppTexts.accountsTablePopupMenuHideClearedRecords.obs;

  @override
  void dataInit() {
    // AppLocalStorage.to.clearStorage();
    listRecords.value = AppLocalStorage.to.loadAccountsRecords();
    appDebugPrint('Records Count: ${listRecords.count()}');
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.accounts;
  }

  @override
  void onInitFunction() {
    listRecords.defaultSortFunction();
    itemsSum.value = listRecords.calculateSum().toCurrency();
    itemsCount.value = listRecords.value.recordsList.length;
    itemsCountContacts.value = listRecords.value.recordsList.length;
    listRecords.listen((data) => onInitFunction());
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void clearRecordsList() => listRecords.clearRecordsList();

  void addRecordFunction() async {
    AccountRecord? record =
        await AppAccountsAddNewRecordComponent().addNewAccountsRecordModal();
    record == null
        ? null
        : {
            listRecords.addRecord(record),
            appDebugPrint('Added Record: $record')
          };
  }

  void clearRecord(AccountRecord record, bool? checked) => checked == true
      ? listRecords.clearRecord(record)
      : listRecords.unClearRecord(record);

  void changeShowCleared() {
    showCleared.value = !showCleared.value;
    showCleared.value
        ? showClearedText.value = AppTexts.accountsTablePopupMenuHideClearedRecords
        : showClearedText.value = AppTexts.accountsTablePopupMenuShowClearedRecords;
    refresh();
  }
}
