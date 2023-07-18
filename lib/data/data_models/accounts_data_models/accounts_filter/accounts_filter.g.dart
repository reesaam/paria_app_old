// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountsFilter _$$_AccountsFilterFromJson(Map<String, dynamic> json) =>
    _$_AccountsFilter(
      contact: json['contact'] == null
          ? null
          : AppContact.fromJson(json['contact'] as Map<String, dynamic>),
      amountUp: json['amountUp'] as int?,
      amountDown: json['amountDown'] as int?,
      dateTimeUp: json['dateTimeUp'] == null
          ? null
          : DateTime.parse(json['dateTimeUp'] as String),
      dateTimeDown: json['dateTimeDown'] == null
          ? null
          : DateTime.parse(json['dateTimeDown'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_AccountsFilterToJson(_$_AccountsFilter instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'amountUp': instance.amountUp,
      'amountDown': instance.amountDown,
      'dateTimeUp': instance.dateTimeUp?.toIso8601String(),
      'dateTimeDown': instance.dateTimeDown?.toIso8601String(),
      'description': instance.description,
    };

_$_AccountsFiltersList _$$_AccountsFiltersListFromJson(
        Map<String, dynamic> json) =>
    _$_AccountsFiltersList(
      recordsList: (json['recordsList'] as List<dynamic>?)
              ?.map((e) => AppAccountsFilter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppAccountsFilter>[],
    );

Map<String, dynamic> _$$_AccountsFiltersListToJson(
        _$_AccountsFiltersList instance) =>
    <String, dynamic>{
      'recordsList': instance.recordsList,
    };
