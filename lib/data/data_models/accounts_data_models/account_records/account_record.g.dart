// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_record.dart';

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

_$_AccountRecordsList _$$_AccountRecordsListFromJson(
        Map<String, dynamic> json) =>
    _$_AccountRecordsList(
      recordsList: (json['recordsList'] as List<dynamic>?)
              ?.map((e) => AccountRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AccountRecord>[],
    );

Map<String, dynamic> _$$_AccountRecordsListToJson(
        _$_AccountRecordsList instance) =>
    <String, dynamic>{
      'recordsList': instance.recordsList,
    };
