// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountItem _$$_AccountItemFromJson(Map<String, dynamic> json) =>
    _$_AccountItem(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      amount: json['amount'] as int?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      solved: json['solved'] as bool?,
    );

Map<String, dynamic> _$$_AccountItemToJson(_$_AccountItem instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'amount': instance.amount,
      'dateTime': instance.dateTime?.toIso8601String(),
      'solved': instance.solved,
    };
