import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_contact.freezed.dart';
part 'app_contact.g.dart';

@unfreezed
class AppContact with _$AppContact {
  const factory AppContact({
    final String? firstName,
    final String? lastName,
    final String? mobile,
    final String? profilePicture,
    final int? accountRecordsCounter,
    final int? balance,
  }) = _AppContact;

  factory AppContact.fromJson(Map<String, dynamic> json) =>
      _$AppContactFromJson(json);
}

@unfreezed
class AppContactsList with _$AppContactsList {
  factory AppContactsList({
    @Default(<AppContact>[]) List<AppContact> contactsList,
  }) = _AppContactsList;

  factory AppContactsList.fromJson(Map<String, dynamic> json) =>
      _$AppContactsListFromJson(json);
}