import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_record_component.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/app_extensions_account_records.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AccountsController extends CoreController {
  Rx<AccountRecordsList> listRecords =
      AccountRecordsList(recordsList: List<AccountRecord>.empty(growable: true))
          .obs;

  Rx<int> itemsBalance = 0.obs;
  Rx<int> itemsCount = 0.obs;
  Rx<int> itemsCountContacts = 0.obs;

  Rx<bool> showCleared = false.obs;
  Rx<bool> clearedIncluded = false.obs;
  Rx<String> showClearedText =
      AppTexts.accountsTablePopupMenuShowClearedRecords.obs;

  Rx<bool> hasFilter = false.obs;
  Rx<Icon> filterIcon = AppIcons.noFilter.obs;

  @override
  void dataInit() {
    // AppLocalStorage.to.clearStorage();
    listRecords.value = AppLocalStorage.to.loadAccountsRecords();
    appDebugPrint('Records Count: ${listRecords.count()}');
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.accounts;
    hasFilter.listen((value) => value == true
        ? filterIcon.value = AppIcons.filter
        : filterIcon.value = AppIcons.noFilter);
  }

  @override
  void onInitFunction() {
    listRecords.defaultSortFunction();
    itemsBalance.value =
        listRecords.calculateSum(clearedIncluded.value).balance!;
    itemsCount.value = listRecords.calculateSum(clearedIncluded.value).count!;
    itemsCountContacts.value = listRecords.countContacts(clearedIncluded.value);
    listRecords.listen((data) => onInitFunction());
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  clearRecordsList() {
    function() {
      listRecords.clearRecordsList();
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyAccountRecords);
      Get.back();
      appDebugPrint('Contacts Cleared');
    }

    Get.back();
    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSure, function);
  }

  addRecordFunction() async {
    AccountRecord? record =
        await AppAccountsAddRecordComponent().addAccountsRecordModal();
    record == null
        ? null
        : {
            listRecords.addRecord(record),
            appDebugPrint('Added Record: $record')
          };
  }

  clearRecord(AccountRecord record, bool? checked) => checked == true
      ? {listRecords.clearRecord(record), onInitFunction()}
      : {listRecords.unClearRecord(record), onInitFunction()};

  changeShowCleared() {
    Get.back();
    showCleared.value = !showCleared.value;
    clearedIncluded.value = showCleared.value;
    appDebugPrint('Show Cleared changed to: ${showCleared.value}');
    showCleared.value
        ? showClearedText.value =
            AppTexts.accountsTablePopupMenuHideClearedRecords
        : showClearedText.value =
            AppTexts.accountsTablePopupMenuShowClearedRecords;
    onInitFunction();
  }

  changeFilter() {}
}
