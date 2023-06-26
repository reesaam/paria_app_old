import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_records.freezed.dart';
part 'account_records.g.dart';

@freezed
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