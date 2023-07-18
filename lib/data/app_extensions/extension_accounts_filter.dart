import 'package:paria_app/data/app_extensions/extensions_contact.dart';
import 'package:paria_app/data/data_models/accounts_data_models/accounts_filter/accounts_filter.dart';

extension Compare on AppAccountsFilter {
  equalTo(AppAccountsFilter filter) =>
      contact?.equalTo(filter.contact) &&
      description == filter.description &&
      amountUp == filter.amountUp &&
      amountDown == filter.amountDown &&
      dateTimeUp.toString() == filter.dateTimeUp.toString() &&
      dateTimeDown.toString() == filter.dateTimeDown.toString();
}

extension Checks on AppAccountsFilter {
  isEmpty() => equalTo(const AppAccountsFilter());
}
