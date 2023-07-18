import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';

extension Compare on AppAccountRecord {
  equalTo(AppAccountRecord record) =>
      contact == null && record.contact == null
          ? true
          : contact == null
              ? record.contact!.equalTo(contact)
              : contact!.equalTo(record.contact) &&
                  title == record.title &&
                  amount == record.amount &&
                  dateTime!.equalTo(record.dateTime!) &&
                  cleared == record.cleared;
}

extension Checks on AppAccountRecord {
  isEmpty() => equalTo(const AppAccountRecord());
}
