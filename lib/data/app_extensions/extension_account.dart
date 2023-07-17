import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';

extension Compare on AppAccountRecord {
  bool equalTo(AppAccountRecord record) =>
      contact!.equalTo(record.contact!) &&
      title == record.title &&
      amount == record.amount &&
      dateTime == record.dateTime &&
      cleared == record.cleared;
}

extension Checks on AppAccountRecord {
  isEmpty() => equalTo(const AppAccountRecord());
}