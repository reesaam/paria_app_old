import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_item.freezed.dart';
part 'account_item.g.dart';

@freezed
class AccountRecord with _$AccountRecord {
  const factory AccountRecord({
    @required AppContact? contact,
    @required int? amount,
    @required String? title,
    @required DateTime? dateTime,
    @required bool? cleared,
  }) = _AccountRecord;

  factory AccountRecord.fromJson(Map<String, dynamic> json) =>
      _$AccountRecordFromJson(json);
}