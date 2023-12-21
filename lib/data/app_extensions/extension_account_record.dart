
import '../../../data/app_extensions/extension_contact.dart';
import '../../../data/app_extensions/extension_date_time.dart';

import '../data_models/accounts_data_models/account_records/account_record.dart';

extension StringProviders on AppAccountRecord {
  String get getContactFullName => '${contact!.firstName ?? ''} ${contact!.lastName ?? ''}';
}

extension CompareNull on AppAccountRecord? {
  bool equalTo(AppAccountRecord? record) => this == null && record == null
      ? true
      : this == null || record == null
          ? false
          : this!.contact.equalTo(record.contact) &&
              this!.title == record.title &&
              this!.amount == record.amount &&
              this!.dateTime.equalTo(record.dateTime) &&
              this!.cleared == record.cleared;
}

extension Compare on AppAccountRecord {
  bool equalTo(AppAccountRecord record) =>
      contact.equalTo(record.contact) &&
      title == record.title &&
      amount == record.amount &&
      dateTime.equalTo(record.dateTime) &&
      cleared == record.cleared;
}

extension ChecksNull on AppAccountRecord? {
  bool get isEmpty => this == null ? true : equalTo(const AppAccountRecord());
}

extension Checks on AppAccountRecord {
  bool get isEmpty => equalTo(const AppAccountRecord());
}
