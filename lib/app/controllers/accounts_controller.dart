import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_record_component.dart';
import 'package:paria_app/app/components/accounts_components/accounts_filter_component.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extension_accounts_filter.dart';
import 'package:paria_app/data/app_extensions/extensions_account_records_list.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AccountsController extends CoreController {
  Rx<AccountRecordsList> listRecords = AccountRecordsList(
          recordsList: List<AppAccountRecord>.empty(growable: true))
      .obs;

  Rx<int> itemsBalance = 0.obs;
  Rx<int> itemsCount = 0.obs;
  Rx<int> itemsCountContacts = 0.obs;

  Rx<bool> showCleared = false.obs;
  Rx<bool> clearedIncluded = false.obs;
  Rx<String> showClearedText =
      AppTexts.accountsTablePopupMenuShowClearedRecords.obs;

  Rx<bool> hasFilter = false.obs;
  Rx<AppAccountsFilter> filter = const AppAccountsFilter().obs;
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
  }

  @override
  void onInitFunction() {
    listRecords.defaultSortFunction();
    summeryInit();
    filterInit();
    filter.listen((data) => filterInit());
    listRecords.listen((data) => summeryInit());
    refresh();
  }

  void summeryInit() {
    itemsBalance.value =
        listRecords.calculateSum(clearedIncluded.value).balance!;
    itemsCount.value = listRecords.calculateSum(clearedIncluded.value).count!;
    itemsCountContacts.value = listRecords.countContacts(clearedIncluded.value);
  }

  void filterInit() {
    hasFilter.value = !filter.value.isEmpty();
    appDebugPrint('Filter isEmpty: ${filter.value.isEmpty()}');
    hasFilter.listen((value) => value
        ? filterIcon.value = AppIcons.filter
        : clearFilter());
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
    AppAccountRecord? record =
        await AppAccountsAddRecordComponent().addAccountsRecordModal();
    record == null
        ? null
        : {
            listRecords.addRecord(record),
            appDebugPrint('Added Record: $record')
          };
  }

  clearRecord(AppAccountRecord record, bool? checked) => checked == true
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

  changeFilter() async {
    filter.value = await AppAccountsFilterComponent().showFilterModal(filter.value);
    refresh();
  }

  clearFilter() {
    filterIcon.value = AppIcons.noFilter;
    filter.value = const AppAccountsFilter();
    refresh();
  }
}
