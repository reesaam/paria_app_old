// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppContact _$$_AppContactFromJson(Map<String, dynamic> json) =>
    _$_AppContact(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobile: json['mobile'] as String?,
      profilePicture: json['profilePicture'] as String? ?? '',
      accountRecordsCounter: json['accountRecordsCounter'] as int? ?? 0,
      balance: json['balance'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AppContactToJson(_$_AppContact instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobile': instance.mobile,
      'profilePicture': instance.profilePicture,
      'accountRecordsCounter': instance.accountRecordsCounter,
      'balance': instance.balance,
    };
