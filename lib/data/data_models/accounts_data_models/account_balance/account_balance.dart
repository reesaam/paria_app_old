import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_balance.freezed.dart';
part 'account_balance.g.dart';

@unfreezed
class AccountBalance with _$AccountBalance {
  const factory AccountBalance({
    final AppContact? contact,
    final int? balance,
    final int? count,
  }) = _AccountBalance;

  factory AccountBalance.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceFromJson(json);
}

@unfreezed
class AccountBalancesList with _$AccountBalancesList {
  factory AccountBalancesList({
    @Default(<AccountBalance>[]) List<AccountBalance> balancesList
  }) = _AccountBalancesList;

  factory AccountBalancesList.fromJson(Map<String, dynamic> json) =>
      _$AccountBalancesListFromJson(json);
}