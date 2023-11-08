// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppDataImpl _$$AppDataImplFromJson(Map<String, dynamic> json) =>
    _$AppDataImpl(
      contacts: json['contacts'] == null
          ? null
          : AppContactsList.fromJson(json['contacts'] as Map<String, dynamic>),
      accountRecords: json['accountRecords'] == null
          ? null
          : AppAccountRecordsList.fromJson(
              json['accountRecords'] as Map<String, dynamic>),
      setting: json['setting'] == null
          ? null
          : AppSettingData.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppDataImplToJson(_$AppDataImpl instance) =>
    <String, dynamic>{
      'contacts': instance.contacts,
      'accountRecords': instance.accountRecords,
      'setting': instance.setting,
    };
