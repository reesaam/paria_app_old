// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingData _$$_AppSettingDataFromJson(Map<String, dynamic> json) =>
    _$_AppSettingData(
      language: $enumDecodeNullable(_$AppLanguagesEnumMap, json['language']),
      calendarType:
          $enumDecodeNullable(_$AppCalendarTypesEnumMap, json['calendarType']),
      darkMode: json['darkMode'] as bool?,
    );

Map<String, dynamic> _$$_AppSettingDataToJson(_$_AppSettingData instance) =>
    <String, dynamic>{
      'language': _$AppLanguagesEnumMap[instance.language],
      'calendarType': _$AppCalendarTypesEnumMap[instance.calendarType],
      'darkMode': instance.darkMode,
    };

const _$AppLanguagesEnumMap = {
  AppLanguages.english: 'english',
};

const _$AppCalendarTypesEnumMap = {
  AppCalendarTypes.georgian: 'georgian',
};

_$_AppSettingsDataList _$$_AppSettingsDataListFromJson(
        Map<String, dynamic> json) =>
    _$_AppSettingsDataList(
      appSettingsDataList: (json['appSettingsDataList'] as List<dynamic>?)
              ?.map((e) => AppSettingData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppSettingData>[],
    );

Map<String, dynamic> _$$_AppSettingsDataListToJson(
        _$_AppSettingsDataList instance) =>
    <String, dynamic>{
      'appSettingsDataList': instance.appSettingsDataList,
    };
