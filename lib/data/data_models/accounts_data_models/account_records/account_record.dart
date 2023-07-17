import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_record.freezed.dart';
part 'account_record.g.dart';

@unfreezed
class AppAccountRecord with _$AccountRecord {
  const factory AppAccountRecord({
    final AppContact? contact,
    final int? amount,
    final String? title,
    final DateTime? dateTime,
    final bool? cleared,
  }) = _AccountRecord;

  factory AppAccountRecord.fromJson(Map<String, dynamic> json) =>
      _$AccountRecordFromJson(json);
}

@unfreezed
class AccountRecordsList with _$AccountRecordsList {
  factory AccountRecordsList({
    @Default(<AppAccountRecord>[]) List<AppAccountRecord> recordsList
  }) = _AccountRecordsList;

  factory AccountRecordsList.fromJson(Map<String, dynamic> json) =>
      _$AccountRecordsListFromJson(json);
}