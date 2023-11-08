// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppData _$AppDataFromJson(Map<String, dynamic> json) {
  return _AppData.fromJson(json);
}

/// @nodoc
mixin _$AppData {
  AppContactsList? get contacts => throw _privateConstructorUsedError;
  AppAccountRecordsList? get accountRecords =>
      throw _privateConstructorUsedError;
  AppSettingData? get setting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppDataCopyWith<AppData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDataCopyWith<$Res> {
  factory $AppDataCopyWith(AppData value, $Res Function(AppData) then) =
      _$AppDataCopyWithImpl<$Res, AppData>;
  @useResult
  $Res call(
      {AppContactsList? contacts,
      AppAccountRecordsList? accountRecords,
      AppSettingData? setting});

  $AppContactsListCopyWith<$Res>? get contacts;
  $AppAccountRecordsListCopyWith<$Res>? get accountRecords;
  $AppSettingDataCopyWith<$Res>? get setting;
}

/// @nodoc
class _$AppDataCopyWithImpl<$Res, $Val extends AppData>
    implements $AppDataCopyWith<$Res> {
  _$AppDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = freezed,
    Object? accountRecords = freezed,
    Object? setting = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as AppContactsList?,
      accountRecords: freezed == accountRecords
          ? _value.accountRecords
          : accountRecords // ignore: cast_nullable_to_non_nullable
              as AppAccountRecordsList?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as AppSettingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppContactsListCopyWith<$Res>? get contacts {
    if (_value.contacts == null) {
      return null;
    }

    return $AppContactsListCopyWith<$Res>(_value.contacts!, (value) {
      return _then(_value.copyWith(contacts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppAccountRecordsListCopyWith<$Res>? get accountRecords {
    if (_value.accountRecords == null) {
      return null;
    }

    return $AppAccountRecordsListCopyWith<$Res>(_value.accountRecords!,
        (value) {
      return _then(_value.copyWith(accountRecords: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingDataCopyWith<$Res>? get setting {
    if (_value.setting == null) {
      return null;
    }

    return $AppSettingDataCopyWith<$Res>(_value.setting!, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppDataImplCopyWith<$Res> implements $AppDataCopyWith<$Res> {
  factory _$$AppDataImplCopyWith(
          _$AppDataImpl value, $Res Function(_$AppDataImpl) then) =
      __$$AppDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppContactsList? contacts,
      AppAccountRecordsList? accountRecords,
      AppSettingData? setting});

  @override
  $AppContactsListCopyWith<$Res>? get contacts;
  @override
  $AppAccountRecordsListCopyWith<$Res>? get accountRecords;
  @override
  $AppSettingDataCopyWith<$Res>? get setting;
}

/// @nodoc
class __$$AppDataImplCopyWithImpl<$Res>
    extends _$AppDataCopyWithImpl<$Res, _$AppDataImpl>
    implements _$$AppDataImplCopyWith<$Res> {
  __$$AppDataImplCopyWithImpl(
      _$AppDataImpl _value, $Res Function(_$AppDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = freezed,
    Object? accountRecords = freezed,
    Object? setting = freezed,
  }) {
    return _then(_$AppDataImpl(
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as AppContactsList?,
      accountRecords: freezed == accountRecords
          ? _value.accountRecords
          : accountRecords // ignore: cast_nullable_to_non_nullable
              as AppAccountRecordsList?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as AppSettingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDataImpl implements _AppData {
  const _$AppDataImpl({this.contacts, this.accountRecords, this.setting});

  factory _$AppDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDataImplFromJson(json);

  @override
  final AppContactsList? contacts;
  @override
  final AppAccountRecordsList? accountRecords;
  @override
  final AppSettingData? setting;

  @override
  String toString() {
    return 'AppData(contacts: $contacts, accountRecords: $accountRecords, setting: $setting)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      __$$AppDataImplCopyWithImpl<_$AppDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDataImplToJson(
      this,
    );
  }
}

abstract class _AppData implements AppData {
  const factory _AppData(
      {final AppContactsList? contacts,
      final AppAccountRecordsList? accountRecords,
      final AppSettingData? setting}) = _$AppDataImpl;

  factory _AppData.fromJson(Map<String, dynamic> json) = _$AppDataImpl.fromJson;

  @override
  AppContactsList? get contacts;
  @override
  AppAccountRecordsList? get accountRecords;
  @override
  AppSettingData? get setting;
  @override
  @JsonKey(ignore: true)
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
