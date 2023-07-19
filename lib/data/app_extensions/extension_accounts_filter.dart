import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';

extension CompareNull on AppAccountsFilter? {
  bool equalTo(AppAccountsFilter? filter) => this == null && filter == null
      ? true
      : this == null || filter == null
          ? false
          : this!.contact.equalTo(filter.contact) &&
              this!.description == filter.description &&
              this!.amountUp == filter.amountUp &&
              this!.amountDown == filter.amountDown &&
              this!.dateTimeUp!.equalTo(filter.dateTimeUp!) &&
              this!.dateTimeDown!.equalTo(filter.dateTimeDown!);
}

extension Compare on AppAccountsFilter {
  bool equalTo(AppAccountsFilter? filter) => filter == null
      ? false
      : contact.equalTo(filter.contact) &&
          description == filter.description &&
          amountUp == filter.amountUp &&
          amountDown == filter.amountDown &&
          dateTimeUp.equalTo(filter.dateTimeUp) &&
          dateTimeDown.equalTo(filter.dateTimeDown);
}

extension ChecksNull on AppAccountsFilter? {
  bool get isEmpty => this == null ? true : equalTo(const AppAccountsFilter());
}

extension Checks on AppAccountsFilter {
  bool get isEmpty => equalTo(const AppAccountsFilter());
}

extension Actions on AppAccountsFilter {
  AppAccountsFilter get clear => const AppAccountsFilter();
}
