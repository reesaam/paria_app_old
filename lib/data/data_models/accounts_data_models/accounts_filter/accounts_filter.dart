import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'accounts_filter.freezed.dart';
part 'accounts_filter.g.dart';

@unfreezed
class AppAccountsFilter with _$AccountsFilter {
  const factory AppAccountsFilter({
    final AppContact? contact,
    final int? amountUp,
    final int? amountDown,
    final DateTime? dateTimeUp,
    final DateTime? dateTimeDown,
    final String? description,
  }) = _AccountsFilter;

  factory AppAccountsFilter.fromJson(Map<String, dynamic> json) =>
      _$AccountsFilterFromJson(json);
}

@unfreezed
class AccountsFiltersList with _$AccountsFiltersList {
  factory AccountsFiltersList({
    @Default(<AppAccountsFilter>[]) List<AppAccountsFilter> recordsList
  }) = _AccountsFiltersList;

  factory AccountsFiltersList.fromJson(Map<String, dynamic> json) =>
      _$AccountsFiltersListFromJson(json);
}