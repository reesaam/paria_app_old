import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/data/app_extensions/extension_account_record.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_accounts_filter.dart';
import 'package:paria_app/data/app_extensions/extension_bool.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_icon.dart';

import '../../core/admin/app_core_functions.dart';
import '../../core/elements/core_controller.dart';
import '../../data/data_models/accounts_data_models/account_records/account_record.dart';
import '../../data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';
import '../../data/resources/app_enums.dart';
import '../../data/resources/app_icons.dart';
import '../../data/resources/app_page_details.dart';
import '../../data/resources/app_spaces.dart';
import '../../data/resources/app_text_styles.dart';
import '../../data/resources/app_texts.dart';
import '../../data/storage/app_local_storage.dart';
import '../components/accounts_components/accounts_add_edit_record_component.dart';
import '../components/accounts_components/accounts_filter_component.dart';
import '../components/app_general_components/app_dialogs.dart';


class AccountsController extends CoreController {
  //Lists
  Rx<AppAccountRecordsList> listRecords = AppAccountRecordsList(
          recordsList: List<AppAccountRecord>.empty(growable: true))
      .obs;
  late List<int> listTableItemSections;

  //Summery
  Rx<int> itemsBalance = 0.obs;
  Rx<int> itemsCount = 0.obs;
  Rx<int> itemsCountContacts = 0.obs;

  //Clearing Records
  Rx<bool> showCleared = false.obs;
  Rx<bool> clearedIncluded = false.obs;
  Rx<String> showClearedText =
      AppTexts.accountsTablePopupMenuShowClearedRecords.obs;
  Rx<bool> showPositive = false.obs;
  Rx<String> showPositiveText =
      AppTexts.accountsTablePopupMenuShowPositiveRecords.obs;
  Rx<bool> showNegative = false.obs;
  Rx<String> showNegativeText =
      AppTexts.accountsTablePopupMenuShowNegativeRecords.obs;

  //Filter
  Rx<bool> hasFilter = false.obs;
  Rx<AppAccountsFilter> filter = const AppAccountsFilter().obs;
  Rx<Icon> filterIcon = AppIcons.noFilter.obs;

  //Listeners
  StreamSubscription? listenerListRecords;
  StreamSubscription? listenerFilter;
  StreamSubscription? listenerHasFilter;
  StreamSubscription? listenerShowPositive;
  StreamSubscription? listenerShowNegative;

  @override
  void dataInit() {
    listRecords = AppAccountRecordsList().loadFromStorage.obs;
    appDebugPrint('Records Count: ${listRecords.count}');
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.accounts;
    listTableItemSections = [2, 4, 5, 4, 5];
  }

  @override
  void onInitFunction() {
    listRecords.defaultSortFunction;
    summeryInit();
    filterInit();
    listenersInit();
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    listenersClose();
    saveAppData();
  }

  void listenersInit() {
    listenerListRecords = listRecords.listen((data) => summeryInit());
    listenerFilter = filter.listen((data) => filterInit());
    listenerHasFilter = hasFilter.listen((value) =>
    value ? filterIcon.value = AppIcons.filter : clearAllFilters());
    listenerShowPositive =
        showPositive.listen((value) => showPositiveNegativeChange(true));
    listenerShowNegative =
        showNegative.listen((value) => showPositiveNegativeChange(false));
  }

  void listenersClose() {
    listenerListRecords == null ? null : listenerListRecords!.cancel();
    listenerFilter == null ? null : listenerFilter!.cancel();
    listenerHasFilter == null ? null : listenerHasFilter!.cancel();
    appDebugPrint('Listeners Closed');
  }

  void summeryInit() {
    itemsBalance.value =
    listRecords.calculateSum(clearedIncluded.value).balance!;
    itemsCount.value = listRecords.calculateSum(clearedIncluded.value).count!;
    itemsCountContacts.value = listRecords.countContacts(clearedIncluded.value);
    appDebugPrint(
        'Summery: Balance (${itemsBalance.value}) in ${itemsCount.value} items and ${itemsCountContacts.value} contacts');
  }

  void filterInit() {
    hasFilter.value = !filter.isEmpty;
    hasFilter.value ? null : {showPositive.clear, showNegative.clear};
    appDebugPrint(
        'Filter isEmpty: ${filter.isEmpty} & hasFilter: ${hasFilter.value}');
  }

  clearRecordsList() {
    function() {
      listRecords.clearRecordsList;
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyAccountRecords);
      Get.back();
      appDebugPrint('Records Cleared');
    }

    Get.back();
    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  addRecordFunction() async {
    AppAccountRecord? record =
        await AppAccountsAddRecordComponent().addRecord();
    record == null
        ? null
        : {
            listRecords.addRecord(record),
            appDebugPrint('Record Added: $record')
          };
  }

  void editRecordFunction(AppAccountRecord prevRecord) async {
    AppAccountRecord? record =
        await AppAccountsAddRecordComponent().editRecord(prevRecord);
    appDebugPrint('Record is Empty: ${record.isEmpty}');
    record.isEmpty
        ? null
        : {
            listRecords.editRecord(prevRecord, record!),
            appDebugPrint('Record Edited: $record')
          };
    appDebugPrint('Record Edited: $record');
  }

  void removeRecordFunction(AppAccountRecord record) {
    listRecords.removeRecord(record);
    appDebugPrint('Record Removed: $record');
  }

  changeRecordClearanceStatus(AppAccountRecord record, bool? checked) =>
      checked == true
          ? {listRecords.clearRecord(record), onInitFunction()}
          : {listRecords.unClearRecord(record), onInitFunction()};

  changeShowClearedStatus() {
    Get.back();
    showCleared.invert;
    clearedIncluded.value = showCleared.value;
    appDebugPrint('Show Cleared changed to: ${showCleared.value}');
    showCleared.value
        ? showClearedText.value =
            AppTexts.accountsTablePopupMenuHideClearedRecords
        : showClearedText.value =
            AppTexts.accountsTablePopupMenuShowClearedRecords;
    onInitFunction();
  }

  void showPositiveNegativeChange(bool positiveOrNegative) {
    Get.back();
    showPositive.value ? showNegative.clear : null;
    showNegative.value ? showPositive.clear : null;

    showPositive.value
        ? {
      showPositiveText.value =
          AppTexts.accountsTablePopupMenuClearPositiveRecords,
      filter.value = const AppAccountsFilter().copyWith(amountDown: 0)
    }
        : showPositiveText.value =
        AppTexts.accountsTablePopupMenuShowPositiveRecords;

    showNegative.value
        ? {
      showNegativeText.value =
          AppTexts.accountsTablePopupMenuClearNegativeRecords,
      filter.value = const AppAccountsFilter().copyWith(amountUp: 0)
    }
        : showNegativeText.value =
        AppTexts.accountsTablePopupMenuShowNegativeRecords;
    refresh();
  }

  changeShowPositive() {
    filter.clear;
    showPositive.invert;
    appDebugPrint('Show Positive changed to: ${showPositive.value}');
  }

  changeShowNegative() {
    filter.clear;
    showNegative.invert;
    appDebugPrint('Show Negative changed to: ${showNegative.value}');
  }

  addFilterModal() async {
    filter.value =
        await AppAccountsFilterComponent().showFilterModal(filter.value);
    refresh();
  }

  clearAllFilters() {
    filterIcon.value = AppIcons.noFilter;
    filter.clear;
    refresh();
  }

  bool checkFilter(AppAccountsFilter filter, AppAccountRecord record) {
    bool filtered = false;

    //Contact
    filter.contact == null
        ? null
        : filter.contact.equalTo(record.contact)
            ? null
            : filtered = true;

    //Description
    filter.description == null || filter.description == ''
        ? null
        : record.title == null || record.title == ''
            ? null
            : filtered = !record.title!.contains(filter.description!);

    //AmountDown
    filter.amountDown == null
        ? null
        : record.amount! < filter.amountDown!
            ? filtered = true
            : null;

    //AmountUp
    filter.amountUp == null
        ? null
        : record.amount! > filter.amountUp!
            ? filtered = true
            : null;

    //DateTimeDown
    filter.dateTimeDown == null
        ? false
        : filtered = record.dateTime!.isBefore(filter.dateTimeDown!);

    //DateTimeUp
    filter.dateTimeUp == null
        ? false
        : filtered = record.dateTime!.isAfter(filter.dateTimeUp!);

    appDebugPrint('Filtered: $filtered');
    return filtered;
  }

  Widget _widgetItemMenuItem(String text, Icon icon, VoidCallback function) =>
      InkWell(
          onTap: () => {Get.back(), function()},
          child: Card(
            child: Container(
                // padding: AppPaddings.accountTableItemMenuItem,
                alignment: Alignment.center,
                width: Get.width / 4,
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      icon.withAppDefaultColor.withSize(15),
                      AppSpaces.w05,
                      Text(text,
                          style: AppTextStyles.accountsTableItemsMenuItem)
                    ])),
          ));

  showItemMenu(AppAccountRecord record) =>
      AppDialogs.appBottomDialogWithoutButton(
          record.contact!.getContactFullName,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _widgetItemMenuItem(
                    AppTexts.accountsTableItemMenuCheck,
                    AppIcons.check,
                    () => changeRecordClearanceStatus(
                        record, record.cleared!.invert)),
                _widgetItemMenuItem(AppTexts.accountsTableItemMenuEdit,
                    AppIcons.edit, () => editRecordFunction(record)),
                _widgetItemMenuItem(AppTexts.accountsTableItemMenuRemove,
                    AppIcons.close, () => removeRecordFunction(record)),
              ]), true);
}
