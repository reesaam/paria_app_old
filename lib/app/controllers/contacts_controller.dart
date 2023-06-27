import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_new_record_component.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class ContactsController extends CoreController {
  RxList<AccountRecord> listContacts =
      List<AccountRecord>.empty(growable: true).obs;

  @override
  void dataInit() {
    listContacts.value = AppLocalStorage.to.loadAccountsRecords() ?? List.empty(growable: true);
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

  void addRecordFunction() =>
      AppAccountsAddNewRecordComponent().addNewAccountsRecord(listContacts.value);

  int calculateSum() {
    int sum = 0;
    for (AccountRecord r in listContacts.value) {
      sum += r.amount!;
    }
    return sum;
  }

  String date(DateTime date) => '${date.year}/${date.month}/${date.day}';
}
