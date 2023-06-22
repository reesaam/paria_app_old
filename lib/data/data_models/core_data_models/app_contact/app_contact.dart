import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_contact.freezed.dart';
part 'app_contact.g.dart';

@freezed
class AppContact with _$AppContact {
  const factory AppContact({
    @required String? firstName,
    @required String? lastName,
    @required String? mobile,
    @Default('') String profilePicture,
    @Default(0) int accountRecordsCounter,
    @Default(0) int balance,
  }) = _AppContact;

  factory AppContact.fromJson(Map<String, dynamic> json) =>
      _$AppContactFromJson(json);
}