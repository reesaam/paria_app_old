import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core_data_models/app_contact/app_contact.dart';

part 'account_record.freezed.dart';
part 'account_record.g.dart';

@unfreezed
class AppAccountRecord with _$AppAccountRecord {
  const factory AppAccountRecord({
    final AppContact? contact,
    final int? amount,
    final String? title,
    final DateTime? dateTime,
    final bool? cleared,
  }) = _AppAccountRecord;

  factory AppAccountRecord.fromJson(Map<String, dynamic> json) =>
      _$AppAccountRecordFromJson(json);
}

@unfreezed
class AppAccountRecordsList with _$AppAccountRecordsList {
  factory AppAccountRecordsList({
    @Default(<AppAccountRecord>[]) List<AppAccountRecord> recordsList
  }) = _AppAccountRecordsList;

  factory AppAccountRecordsList.fromJson(Map<String, dynamic> json) =>
      _$AppAccountRecordsListFromJson(json);
}