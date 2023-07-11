import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/resources/app_enums.dart';

part 'app_setting_data.freezed.dart';
part 'app_setting_data.g.dart';

@unfreezed
class AppSettingData with _$AppSettingData {
  const factory AppSettingData({
    final String? language,
    final CalendarTypes? calendarType,
    final bool? darkMode,
  }) = _AppSettingData;

  factory AppSettingData.fromJson(Map<String, dynamic> json) =>
      _$AppSettingDataFromJson(json);
}

@unfreezed
class AppSettingsDataList with _$AppSettingsDataList {
  factory AppSettingsDataList({
    @Default(<AppSettingData>[]) List<AppSettingData> appSettingsDataList
  }) = _AppSettingsDataList;

  factory AppSettingsDataList.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsDataListFromJson(json);
}