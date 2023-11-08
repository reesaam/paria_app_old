import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core_data_models/app_contact/app_contact.dart';

part 'accounts_filter.freezed.dart';
part 'accounts_filter.g.dart';

@unfreezed
class AppAccountsFilter with _$AppAccountsFilter {
  const factory AppAccountsFilter({
    final AppContact? contact,
    final int? amountUp,
    final int? amountDown,
    final DateTime? dateTimeUp,
    final DateTime? dateTimeDown,
    final String? description,
  }) = _AppAccountsFilter;

  factory AppAccountsFilter.fromJson(Map<String, dynamic> json) =>
      _$AppAccountsFilterFromJson(json);
}

@unfreezed
class AppAccountsFiltersList with _$AppAccountsFiltersList {
  factory AppAccountsFiltersList({
    @Default(<AppAccountsFilter>[]) List<AppAccountsFilter> filtersList
  }) = _AppAccountsFiltersList;

  factory AppAccountsFiltersList.fromJson(Map<String, dynamic> json) =>
      _$AppAccountsFiltersListFromJson(json);
}