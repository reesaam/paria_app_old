import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/data_models/core_data_models/app_setting_data/app_setting_data.dart';

part 'app_data.freezed.dart';
part 'app_data.g.dart';

@unfreezed
class AppData with _$AppData {
  const factory AppData({
    final AppContactsList? contacts,
    final AppAccountRecordsList? accountRecords,
    final AppSettingData? setting,
  }) = _AppData;

  factory AppData.fromJson(Map<String, dynamic> json) =>
      _$AppDataFromJson(json);
}