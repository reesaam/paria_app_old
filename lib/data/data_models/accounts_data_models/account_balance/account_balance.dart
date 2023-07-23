import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_balance.freezed.dart';
part 'account_balance.g.dart';

@unfreezed
class AppAccountBalance with _$AppAccountBalance {
  const factory AppAccountBalance({
    final AppContact? contact,
    final int? balance,
    final int? count,
  }) = _AppAccountBalance;

  factory AppAccountBalance.fromJson(Map<String, dynamic> json) =>
      _$AppAccountBalanceFromJson(json);
}

@unfreezed
class AppAccountBalancesList with _$AppAccountBalancesList {
  factory AppAccountBalancesList({
    @Default(<AppAccountBalance>[]) List<AppAccountBalance> balancesList
  }) = _AppAccountBalancesList;

  factory AppAccountBalancesList.fromJson(Map<String, dynamic> json) =>
      _$AppAccountBalancesListFromJson(json);
}