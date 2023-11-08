// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppContactImpl _$$AppContactImplFromJson(Map<String, dynamic> json) =>
    _$AppContactImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobile: json['mobile'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      webLink: json['webLink'] as String?,
      profilePicture: json['profilePicture'] as String?,
      accountRecordsCounter: json['accountRecordsCounter'] as int?,
      balance: json['balance'] as int?,
    );

Map<String, dynamic> _$$AppContactImplToJson(_$AppContactImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobile': instance.mobile,
      'phone': instance.phone,
      'email': instance.email,
      'webLink': instance.webLink,
      'profilePicture': instance.profilePicture,
      'accountRecordsCounter': instance.accountRecordsCounter,
      'balance': instance.balance,
    };

_$AppContactsListImpl _$$AppContactsListImplFromJson(
        Map<String, dynamic> json) =>
    _$AppContactsListImpl(
      contactsList: (json['contactsList'] as List<dynamic>?)
              ?.map((e) => AppContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppContact>[],
    );

Map<String, dynamic> _$$AppContactsListImplToJson(
        _$AppContactsListImpl instance) =>
    <String, dynamic>{
      'contactsList': instance.contactsList,
    };
