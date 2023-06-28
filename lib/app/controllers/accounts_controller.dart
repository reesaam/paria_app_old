import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_new_record_component.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/app_extensions_account_records.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AccountsController extends CoreController {
  Rx<AccountRecordsList> listRecords = AccountRecordsList(recordsList: List<AccountRecord>.empty(growable: true)).obs;

  @override
  void dataInit() {
    listRecords.value = AppLocalStorage.to.loadAccountsRecords();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.accounts;
  }

  @override
  void onInitFunction() {
    listRecords.value.sortByDateTime();
    refresh();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void addRecordFunction() async {
    AccountRecord record = const AccountRecord();
    record = await AppAccountsAddNewRecordComponent().addNewAccountsRecordModal();
    listRecords.value.addRecord(record);
    refresh();
  }


  void clearRecord(AccountRecord record, bool? checked) async {
    // checked == true
    //     ? AccountsComponents().addClearRecord(listRecords.value, record)
    //     : AccountsComponents().removeClearRecord(listRecords.value, record);
    // listRecords.refresh();
  }

  int calculateSum() {
    int sum = 0;
    for (AccountRecord r in listRecords.value.recordsList) {
      sum += r.amount!;
    }
    return sum;
  }
}
