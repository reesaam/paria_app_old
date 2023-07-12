// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBalance _$$_AccountBalanceFromJson(Map<String, dynamic> json) =>
    _$_AccountBalance(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      balance: json['balance'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_AccountBalanceToJson(_$_AccountBalance instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'balance': instance.balance,
      'count': instance.count,
    };

_$_AccountBalancesList _$$_AccountBalancesListFromJson(
        Map<String, dynamic> json) =>
    _$_AccountBalancesList(
      balancesList: (json['balancesList'] as List<dynamic>?)
              ?.map((e) => AccountBalance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AccountBalance>[],
    );

Map<String, dynamic> _$$_AccountBalancesListToJson(
        _$_AccountBalancesList instance) =>
    <String, dynamic>{
      'balancesList': instance.balancesList,
    };
