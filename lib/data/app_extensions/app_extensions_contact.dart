import 'package:flutter/material.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Accounts on AppContact {
  AccountBalance calculateBalance(bool clearedIncluded) {
    int balance = 0;
    int count = 0;

    AccountRecordsList records = AppLocalStorage.to.loadAccountsRecords();
    for (AccountRecord record in records.recordsList) {
      if (record.contact!.firstName == firstName &&
          record.contact!.lastName == lastName) {
        clearedIncluded
            ? {balance += record.amount!, count++}
            : record.cleared!
                ? null
                : {balance += record.amount!, count++};
      }
    }
    return AccountBalance(contact: this, balance: balance, count: count);
  }
}

extension Compare on AppContact {
  bool equalTo(AppContact contact) =>
      firstName == contact.firstName &&
      lastName == contact.lastName &&
      mobile == contact.mobile &&
      phone == contact.phone &&
      email == contact.email &&
      webLink == contact.webLink;
}

extension Checks on AppContact {
  bool isEmpty() => equalTo(const AppContact());
}
