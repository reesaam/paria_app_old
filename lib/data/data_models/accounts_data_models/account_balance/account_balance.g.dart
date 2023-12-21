// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppAccountBalance _$$_AppAccountBalanceFromJson(Map<String, dynamic> json) =>
    _$_AppAccountBalance(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      balance: json['balance'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_AppAccountBalanceToJson(
        _$_AppAccountBalance instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'balance': instance.balance,
      'count': instance.count,
    };

_$_AppAccountBalancesList _$$_AppAccountBalancesListFromJson(
        Map<String, dynamic> json) =>
    _$_AppAccountBalancesList(
      balancesList: (json['balancesList'] as List<dynamic>?)
              ?.map(
                  (e) => AppAccountBalance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppAccountBalance>[],
    );

Map<String, dynamic> _$$_AppAccountBalancesListToJson(
        _$_AppAccountBalancesList instance) =>
    <String, dynamic>{
      'balancesList': instance.balancesList,
    };
