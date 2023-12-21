// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppData _$$_AppDataFromJson(Map<String, dynamic> json) => _$_AppData(
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

Map<String, dynamic> _$$_AppDataToJson(_$_AppData instance) =>
    <String, dynamic>{
      'contacts': instance.contacts,
      'accountRecords': instance.accountRecords,
      'setting': instance.setting,
    };
