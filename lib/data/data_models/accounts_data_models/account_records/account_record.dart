import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_record.freezed.dart';
part 'account_record.g.dart';

@unfreezed
class AccountRecord with _$AccountRecord {
  const factory AccountRecord({
    final AppContact? contact,
    final int? amount,
    final String? title,
    final DateTime? dateTime,
    final bool? cleared,
  }) = _AccountRecord;

  factory AccountRecord.fromJson(Map<String, dynamic> json) =>
      _$AccountRecordFromJson(json);
}

@unfreezed
class AccountRecordsList with _$AccountRecordsList {
  factory AccountRecordsList({
    @Default(<AccountRecord>[]) List<AccountRecord> recordsList
  }) = _AccountRecordsList;

  factory AccountRecordsList.fromJson(Map<String, dynamic> json) =>
      _$AccountRecordsListFromJson(json);
}