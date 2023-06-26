import 'package:flutter/material.dart';
import 'package:paria_app/app/components/accounts_components/accounts_add_new_record_component.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_item/account_item.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AccountsController extends CoreController {
  late List<AccountRecord> listRecords;

  @override
  void dataInit() {
    listRecords = [
      AccountRecord(
          contact: AppContact(firstName: 'Resam'),
          title: 'Rice',
          amount: -125000,
          dateTime: DateTime.now(),
          cleared: false),
      AccountRecord(
          contact: AppContact(firstName: 'Paria'),
          title: 'STH',
          amount: 252000,
          dateTime: DateTime.now(),
          cleared: false),
    ];
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
      AppAccountsAddNewRecordComponent().addNewAccountsRecord();

  int calculateSum() {
    int sum = 0;
    for (AccountRecord r in listRecords) {
      sum += r.amount!;
    }
    return sum;
  }

  String date(DateTime date) => '${date.year}/${date.month}/${date.day}';
}
