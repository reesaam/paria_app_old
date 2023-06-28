import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_new_record_component.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AccountsController extends CoreController {
  RxList<AccountRecord> listRecords = List<AccountRecord>.empty(growable: true).obs;

  @override
  void dataInit() {
    listRecords.value = AppLocalStorage.to.loadAccountsRecords() ?? List.empty(growable: true);
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.accounts;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void sortAccountsList() => listRecords.value.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));

  void addRecordFunction() =>
      AppAccountsAddNewRecordComponent().addNewAccountsRecord(listRecords);

  int calculateSum() {
    int sum = 0;
    for (AccountRecord r in listRecords) {
      sum += r.amount!;
    }
    return sum;
  }
}
