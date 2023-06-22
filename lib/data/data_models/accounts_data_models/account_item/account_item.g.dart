// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountRecord _$$_AccountRecordFromJson(Map<String, dynamic> json) =>
    _$_AccountRecord(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      amount: json['amount'] as int?,
      title: json['title'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      cleared: json['cleared'] as bool?,
    );

Map<String, dynamic> _$$_AccountRecordToJson(_$_AccountRecord instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'amount': instance.amount,
      'title': instance.title,
      'dateTime': instance.dateTime?.toIso8601String(),
      'cleared': instance.cleared,
    };
