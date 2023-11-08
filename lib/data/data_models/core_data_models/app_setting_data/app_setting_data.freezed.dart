// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingData _$AppSettingDataFromJson(Map<String, dynamic> json) {
  return _AppSettingData.fromJson(json);
}

/// @nodoc
mixin _$AppSettingData {
  AppLanguages? get language => throw _privateConstructorUsedError;
  AppCalendarTypes? get calendarType => throw _privateConstructorUsedError;
  bool? get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingDataCopyWith<AppSettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingDataCopyWith<$Res> {
  factory $AppSettingDataCopyWith(
          AppSettingData value, $Res Function(AppSettingData) then) =
      _$AppSettingDataCopyWithImpl<$Res, AppSettingData>;
  @useResult
  $Res call(
      {AppLanguages? language, AppCalendarTypes? calendarType, bool? darkMode});
}

/// @nodoc
class _$AppSettingDataCopyWithImpl<$Res, $Val extends AppSettingData>
    implements $AppSettingDataCopyWith<$Res> {
  _$AppSettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? calendarType = freezed,
    Object? darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as AppLanguages?,
      calendarType: freezed == calendarType
          ? _value.calendarType
          : calendarType // ignore: cast_nullable_to_non_nullable
              as AppCalendarTypes?,
      darkMode: freezed == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingDataImplCopyWith<$Res>
    implements $AppSettingDataCopyWith<$Res> {
  factory _$$AppSettingDataImplCopyWith(_$AppSettingDataImpl value,
          $Res Function(_$AppSettingDataImpl) then) =
      __$$AppSettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppLanguages? language, AppCalendarTypes? calendarType, bool? darkMode});
}

/// @nodoc
class __$$AppSettingDataImplCopyWithImpl<$Res>
    extends _$AppSettingDataCopyWithImpl<$Res, _$AppSettingDataImpl>
    implements _$$AppSettingDataImplCopyWith<$Res> {
  __$$AppSettingDataImplCopyWithImpl(
      _$AppSettingDataImpl _value, $Res Function(_$AppSettingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? calendarType = freezed,
    Object? darkMode = freezed,
  }) {
    return _then(_$AppSettingDataImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as AppLanguages?,
      calendarType: freezed == calendarType
          ? _value.calendarType
          : calendarType // ignore: cast_nullable_to_non_nullable
              as AppCalendarTypes?,
      darkMode: freezed == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingDataImpl implements _AppSettingData {
  const _$AppSettingDataImpl({this.language, this.calendarType, this.darkMode});

  factory _$AppSettingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingDataImplFromJson(json);

  @override
  final AppLanguages? language;
  @override
  final AppCalendarTypes? calendarType;
  @override
  final bool? darkMode;

  @override
  String toString() {
    return 'AppSettingData(language: $language, calendarType: $calendarType, darkMode: $darkMode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingDataImplCopyWith<_$AppSettingDataImpl> get copyWith =>
      __$$AppSettingDataImplCopyWithImpl<_$AppSettingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingDataImplToJson(
      this,
    );
  }
}

abstract class _AppSettingData implements AppSettingData {
  const factory _AppSettingData(
      {final AppLanguages? language,
      final AppCalendarTypes? calendarType,
      final bool? darkMode}) = _$AppSettingDataImpl;

  factory _AppSettingData.fromJson(Map<String, dynamic> json) =
      _$AppSettingDataImpl.fromJson;

  @override
  AppLanguages? get language;
  @override
  AppCalendarTypes? get calendarType;
  @override
  bool? get darkMode;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingDataImplCopyWith<_$AppSettingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppSettingsDataList _$AppSettingsDataListFromJson(Map<String, dynamic> json) {
  return _AppSettingsDataList.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsDataList {
  List<AppSettingData> get appSettingsDataList =>
      throw _privateConstructorUsedError;
  set appSettingsDataList(List<AppSettingData> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsDataListCopyWith<AppSettingsDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsDataListCopyWith<$Res> {
  factory $AppSettingsDataListCopyWith(
          AppSettingsDataList value, $Res Function(AppSettingsDataList) then) =
      _$AppSettingsDataListCopyWithImpl<$Res, AppSettingsDataList>;
  @useResult
  $Res call({List<AppSettingData> appSettingsDataList});
}

/// @nodoc
class _$AppSettingsDataListCopyWithImpl<$Res, $Val extends AppSettingsDataList>
    implements $AppSettingsDataListCopyWith<$Res> {
  _$AppSettingsDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettingsDataList = null,
  }) {
    return _then(_value.copyWith(
      appSettingsDataList: null == appSettingsDataList
          ? _value.appSettingsDataList
          : appSettingsDataList // ignore: cast_nullable_to_non_nullable
              as List<AppSettingData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsDataListImplCopyWith<$Res>
    implements $AppSettingsDataListCopyWith<$Res> {
  factory _$$AppSettingsDataListImplCopyWith(_$AppSettingsDataListImpl value,
          $Res Function(_$AppSettingsDataListImpl) then) =
      __$$AppSettingsDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppSettingData> appSettingsDataList});
}

/// @nodoc
class __$$AppSettingsDataListImplCopyWithImpl<$Res>
    extends _$AppSettingsDataListCopyWithImpl<$Res, _$AppSettingsDataListImpl>
    implements _$$AppSettingsDataListImplCopyWith<$Res> {
  __$$AppSettingsDataListImplCopyWithImpl(_$AppSettingsDataListImpl _value,
      $Res Function(_$AppSettingsDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettingsDataList = null,
  }) {
    return _then(_$AppSettingsDataListImpl(
      appSettingsDataList: null == appSettingsDataList
          ? _value.appSettingsDataList
          : appSettingsDataList // ignore: cast_nullable_to_non_nullable
              as List<AppSettingData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsDataListImpl implements _AppSettingsDataList {
  _$AppSettingsDataListImpl(
      {this.appSettingsDataList = const <AppSettingData>[]});

  factory _$AppSettingsDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsDataListImplFromJson(json);

  @override
  @JsonKey()
  List<AppSettingData> appSettingsDataList;

  @override
  String toString() {
    return 'AppSettingsDataList(appSettingsDataList: $appSettingsDataList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsDataListImplCopyWith<_$AppSettingsDataListImpl> get copyWith =>
      __$$AppSettingsDataListImplCopyWithImpl<_$AppSettingsDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsDataListImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsDataList implements AppSettingsDataList {
  factory _AppSettingsDataList({List<AppSettingData> appSettingsDataList}) =
      _$AppSettingsDataListImpl;

  factory _AppSettingsDataList.fromJson(Map<String, dynamic> json) =
      _$AppSettingsDataListImpl.fromJson;

  @override
  List<AppSettingData> get appSettingsDataList;
  set appSettingsDataList(List<AppSettingData> value);
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsDataListImplCopyWith<_$AppSettingsDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
