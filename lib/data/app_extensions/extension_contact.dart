import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

extension Accounts on AppContact {
  AppAccountBalance calculateBalance(bool clearedIncluded) {
    int balance = 0;
    int count = 0;

    AppAccountRecordsList records = AppAccountRecordsList().loadFromStorage;
    for (AppAccountRecord record in records.recordsList) {
      if (record.contact!.firstName == firstName &&
          record.contact!.lastName == lastName) {
        clearedIncluded
            ? {balance += record.amount!, count++}
            : record.cleared!
                ? null
                : {balance += record.amount!, count++};
      }
    }
    return AppAccountBalance(contact: this, balance: balance, count: count);
  }
}

extension StringProviders on AppContact {
  String get getContactFullName => '${firstName ?? ''} ${lastName ?? ''}';
  String get getContactInitials => '${firstName!.isEmpty ? '' : firstName![0]}${lastName!.isEmpty ? '' : lastName![0]}';
}

extension CompareNull on AppContact? {
  bool equalTo(AppContact? contact) => this == null && contact == null
      ? true
      : this == null || contact == null
          ? false
          : this!.firstName == contact.firstName &&
              this!.lastName == contact.lastName &&
              this!.mobile == contact.mobile &&
              this!.phone == contact.phone &&
              this!.email == contact.email &&
              this!.webLink == contact.webLink;
}

extension Compare on AppContact {
  bool equalTo(AppContact? contact) => contact == null
      ? false
      : firstName == contact.firstName &&
          lastName == contact.lastName &&
          mobile == contact.mobile &&
          phone == contact.phone &&
          email == contact.email &&
          webLink == contact.webLink;
}

extension ChecksNull on AppContact? {
  bool get isEmpty => this == null ? true : equalTo(const AppContact());
}

extension Checks on AppContact {
  bool get isEmpty => equalTo(const AppContact());
}
