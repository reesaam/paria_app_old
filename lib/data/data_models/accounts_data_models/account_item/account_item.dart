import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

part 'account_item.freezed.dart';
part 'account_item.g.dart';

@freezed
class AccountItem with _$AccountItem {
  const factory AccountItem({
    @required AppContact? contact,
    @required int? amount,
    @required DateTime? dateTime,
    @required bool? solved,
  }) = _AccountItem;

  factory AccountItem.fromJson(Map<String, dynamic> json) =>
      _$AccountItemFromJson(json);
}