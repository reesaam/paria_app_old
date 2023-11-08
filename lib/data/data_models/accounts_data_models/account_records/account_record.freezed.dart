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
abstract class _$$AppAccountRecordImplCopyWith<$Res>
    implements $AppAccountRecordCopyWith<$Res> {
  factory _$$AppAccountRecordImplCopyWith(_$AppAccountRecordImpl value,
          $Res Function(_$AppAccountRecordImpl) then) =
      __$$AppAccountRecordImplCopyWithImpl<$Res>;
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
class __$$AppAccountRecordImplCopyWithImpl<$Res>
    extends _$AppAccountRecordCopyWithImpl<$Res, _$AppAccountRecordImpl>
    implements _$$AppAccountRecordImplCopyWith<$Res> {
  __$$AppAccountRecordImplCopyWithImpl(_$AppAccountRecordImpl _value,
      $Res Function(_$AppAccountRecordImpl) _then)
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
    return _then(_$AppAccountRecordImpl(
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
class _$AppAccountRecordImpl implements _AppAccountRecord {
  const _$AppAccountRecordImpl(
      {this.contact, this.amount, this.title, this.dateTime, this.cleared});

  factory _$AppAccountRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAccountRecordImplFromJson(json);

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
  _$$AppAccountRecordImplCopyWith<_$AppAccountRecordImpl> get copyWith =>
      __$$AppAccountRecordImplCopyWithImpl<_$AppAccountRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAccountRecordImplToJson(
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
      final bool? cleared}) = _$AppAccountRecordImpl;

  factory _AppAccountRecord.fromJson(Map<String, dynamic> json) =
      _$AppAccountRecordImpl.fromJson;

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
  _$$AppAccountRecordImplCopyWith<_$AppAccountRecordImpl> get copyWith =>
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
abstract class _$$AppAccountRecordsListImplCopyWith<$Res>
    implements $AppAccountRecordsListCopyWith<$Res> {
  factory _$$AppAccountRecordsListImplCopyWith(
          _$AppAccountRecordsListImpl value,
          $Res Function(_$AppAccountRecordsListImpl) then) =
      __$$AppAccountRecordsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccountRecord> recordsList});
}

/// @nodoc
class __$$AppAccountRecordsListImplCopyWithImpl<$Res>
    extends _$AppAccountRecordsListCopyWithImpl<$Res,
        _$AppAccountRecordsListImpl>
    implements _$$AppAccountRecordsListImplCopyWith<$Res> {
  __$$AppAccountRecordsListImplCopyWithImpl(_$AppAccountRecordsListImpl _value,
      $Res Function(_$AppAccountRecordsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordsList = null,
  }) {
    return _then(_$AppAccountRecordsListImpl(
      recordsList: null == recordsList
          ? _value.recordsList
          : recordsList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppAccountRecordsListImpl implements _AppAccountRecordsList {
  _$AppAccountRecordsListImpl({this.recordsList = const <AppAccountRecord>[]});

  factory _$AppAccountRecordsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAccountRecordsListImplFromJson(json);

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
  _$$AppAccountRecordsListImplCopyWith<_$AppAccountRecordsListImpl>
      get copyWith => __$$AppAccountRecordsListImplCopyWithImpl<
          _$AppAccountRecordsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAccountRecordsListImplToJson(
      this,
    );
  }
}

abstract class _AppAccountRecordsList implements AppAccountRecordsList {
  factory _AppAccountRecordsList({List<AppAccountRecord> recordsList}) =
      _$AppAccountRecordsListImpl;

  factory _AppAccountRecordsList.fromJson(Map<String, dynamic> json) =
      _$AppAccountRecordsListImpl.fromJson;

  @override
  List<AppAccountRecord> get recordsList;
  set recordsList(List<AppAccountRecord> value);
  @override
  @JsonKey(ignore: true)
  _$$AppAccountRecordsListImplCopyWith<_$AppAccountRecordsListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
