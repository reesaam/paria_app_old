// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppAccountRecord _$AppAccountRecordFromJson(Map<String, dynamic> json) {
  return _AppAccountRecord.fromJson(json);
}

/// @nodoc
mixin _$AppAccountRecord {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool? get cleared => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountRecordCopyWith<AppAccountRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountRecordCopyWith<$Res> {
  factory $AppAccountRecordCopyWith(
          AppAccountRecord value, $Res Function(AppAccountRecord) then) =
      _$AppAccountRecordCopyWithImpl<$Res, AppAccountRecord>;
  @useResult
  $Res call(
      {AppContact? contact,
      int? amount,
      String? title,
      DateTime? dateTime,
      bool? cleared});

  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AppAccountRecordCopyWithImpl<$Res, $Val extends AppAccountRecord>
    implements $AppAccountRecordCopyWith<$Res> {
  _$AppAccountRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amount = freezed,
    Object? title = freezed,
    Object? dateTime = freezed,
    Object? cleared = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cleared: freezed == cleared
          ? _value.cleared
          : cleared // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $AppContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppAccountRecordCopyWith<$Res>
    implements $AppAccountRecordCopyWith<$Res> {
  factory _$$_AppAccountRecordCopyWith(
          _$_AppAccountRecord value, $Res Function(_$_AppAccountRecord) then) =
      __$$_AppAccountRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppContact? contact,
      int? amount,
      String? title,
      DateTime? dateTime,
      bool? cleared});

  @override
  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AppAccountRecordCopyWithImpl<$Res>
    extends _$AppAccountRecordCopyWithImpl<$Res, _$_AppAccountRecord>
    implements _$$_AppAccountRecordCopyWith<$Res> {
  __$$_AppAccountRecordCopyWithImpl(
      _$_AppAccountRecord _value, $Res Function(_$_AppAccountRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amount = freezed,
    Object? title = freezed,
    Object? dateTime = freezed,
    Object? cleared = freezed,
  }) {
    return _then(_$_AppAccountRecord(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cleared: freezed == cleared
          ? _value.cleared
          : cleared // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppAccountRecord implements _AppAccountRecord {
  const _$_AppAccountRecord(
      {this.contact, this.amount, this.title, this.dateTime, this.cleared});

  factory _$_AppAccountRecord.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountRecordFromJson(json);

  @override
  final AppContact? contact;
  @override
  final int? amount;
  @override
  final String? title;
  @override
  final DateTime? dateTime;
  @override
  final bool? cleared;

  @override
  String toString() {
    return 'AppAccountRecord(contact: $contact, amount: $amount, title: $title, dateTime: $dateTime, cleared: $cleared)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountRecordCopyWith<_$_AppAccountRecord> get copyWith =>
      __$$_AppAccountRecordCopyWithImpl<_$_AppAccountRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountRecordToJson(
      this,
    );
  }
}

abstract class _AppAccountRecord implements AppAccountRecord {
  const factory _AppAccountRecord(
      {final AppContact? contact,
      final int? amount,
      final String? title,
      final DateTime? dateTime,
      final bool? cleared}) = _$_AppAccountRecord;

  factory _AppAccountRecord.fromJson(Map<String, dynamic> json) =
      _$_AppAccountRecord.fromJson;

  @override
  AppContact? get contact;
  @override
  int? get amount;
  @override
  String? get title;
  @override
  DateTime? get dateTime;
  @override
  bool? get cleared;
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountRecordCopyWith<_$_AppAccountRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

AppAccountRecordsList _$AppAccountRecordsListFromJson(
    Map<String, dynamic> json) {
  return _AppAccountRecordsList.fromJson(json);
}

/// @nodoc
mixin _$AppAccountRecordsList {
  List<AppAccountRecord> get recordsList => throw _privateConstructorUsedError;
  set recordsList(List<AppAccountRecord> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountRecordsListCopyWith<AppAccountRecordsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountRecordsListCopyWith<$Res> {
  factory $AppAccountRecordsListCopyWith(AppAccountRecordsList value,
          $Res Function(AppAccountRecordsList) then) =
      _$AppAccountRecordsListCopyWithImpl<$Res, AppAccountRecordsList>;
  @useResult
  $Res call({List<AppAccountRecord> recordsList});
}

/// @nodoc
class _$AppAccountRecordsListCopyWithImpl<$Res,
        $Val extends AppAccountRecordsList>
    implements $AppAccountRecordsListCopyWith<$Res> {
  _$AppAccountRecordsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordsList = null,
  }) {
    return _then(_value.copyWith(
      recordsList: null == recordsList
          ? _value.recordsList
          : recordsList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppAccountRecordsListCopyWith<$Res>
    implements $AppAccountRecordsListCopyWith<$Res> {
  factory _$$_AppAccountRecordsListCopyWith(_$_AppAccountRecordsList value,
          $Res Function(_$_AppAccountRecordsList) then) =
      __$$_AppAccountRecordsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccountRecord> recordsList});
}

/// @nodoc
class __$$_AppAccountRecordsListCopyWithImpl<$Res>
    extends _$AppAccountRecordsListCopyWithImpl<$Res, _$_AppAccountRecordsList>
    implements _$$_AppAccountRecordsListCopyWith<$Res> {
  __$$_AppAccountRecordsListCopyWithImpl(_$_AppAccountRecordsList _value,
      $Res Function(_$_AppAccountRecordsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordsList = null,
  }) {
    return _then(_$_AppAccountRecordsList(
      recordsList: null == recordsList
          ? _value.recordsList
          : recordsList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppAccountRecordsList implements _AppAccountRecordsList {
  _$_AppAccountRecordsList({this.recordsList = const <AppAccountRecord>[]});

  factory _$_AppAccountRecordsList.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountRecordsListFromJson(json);

  @override
  @JsonKey()
  List<AppAccountRecord> recordsList;

  @override
  String toString() {
    return 'AppAccountRecordsList(recordsList: $recordsList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountRecordsListCopyWith<_$_AppAccountRecordsList> get copyWith =>
      __$$_AppAccountRecordsListCopyWithImpl<_$_AppAccountRecordsList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountRecordsListToJson(
      this,
    );
  }
}

abstract class _AppAccountRecordsList implements AppAccountRecordsList {
  factory _AppAccountRecordsList({List<AppAccountRecord> recordsList}) =
      _$_AppAccountRecordsList;

  factory _AppAccountRecordsList.fromJson(Map<String, dynamic> json) =
      _$_AppAccountRecordsList.fromJson;

  @override
  List<AppAccountRecord> get recordsList;
  set recordsList(List<AppAccountRecord> value);
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountRecordsListCopyWith<_$_AppAccountRecordsList> get copyWith =>
      throw _privateConstructorUsedError;
}
