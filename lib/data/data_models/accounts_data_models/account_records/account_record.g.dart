// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppAccountRecordImpl _$$AppAccountRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$AppAccountRecordImpl(
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

Map<String, dynamic> _$$AppAccountRecordImplToJson(
        _$AppAccountRecordImpl instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'amount': instance.amount,
      'title': instance.title,
      'dateTime': instance.dateTime?.toIso8601String(),
      'cleared': instance.cleared,
    };

_$AppAccountRecordsListImpl _$$AppAccountRecordsListImplFromJson(
        Map<String, dynamic> json) =>
    _$AppAccountRecordsListImpl(
      recordsList: (json['recordsList'] as List<dynamic>?)
              ?.map((e) => AppAccountRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppAccountRecord>[],
    );

Map<String, dynamic> _$$AppAccountRecordsListImplToJson(
        _$AppAccountRecordsListImpl instance) =>
    <String, dynamic>{
      'recordsList': instance.recordsList,
    };
