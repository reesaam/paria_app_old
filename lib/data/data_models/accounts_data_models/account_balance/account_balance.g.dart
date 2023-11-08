// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppAccountBalanceImpl _$$AppAccountBalanceImplFromJson(
        Map<String, dynamic> json) =>
    _$AppAccountBalanceImpl(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      balance: json['balance'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$AppAccountBalanceImplToJson(
        _$AppAccountBalanceImpl instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'balance': instance.balance,
      'count': instance.count,
    };

_$AppAccountBalancesListImpl _$$AppAccountBalancesListImplFromJson(
        Map<String, dynamic> json) =>
    _$AppAccountBalancesListImpl(
      balancesList: (json['balancesList'] as List<dynamic>?)
              ?.map(
                  (e) => AppAccountBalance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppAccountBalance>[],
    );

Map<String, dynamic> _$$AppAccountBalancesListImplToJson(
        _$AppAccountBalancesListImpl instance) =>
    <String, dynamic>{
      'balancesList': instance.balancesList,
    };
