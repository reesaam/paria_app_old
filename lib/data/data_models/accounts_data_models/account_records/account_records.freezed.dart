// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountRecord _$AccountRecordFromJson(Map<String, dynamic> json) {
  return _AccountRecord.fromJson(json);
}

/// @nodoc
mixin _$AccountRecord {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool? get cleared => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountRecordCopyWith<AccountRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRecordCopyWith<$Res> {
  factory $AccountRecordCopyWith(
          AccountRecord value, $Res Function(AccountRecord) then) =
      _$AccountRecordCopyWithImpl<$Res, AccountRecord>;
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
class _$AccountRecordCopyWithImpl<$Res, $Val extends AccountRecord>
    implements $AccountRecordCopyWith<$Res> {
  _$AccountRecordCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountRecordCopyWith<$Res>
    implements $AccountRecordCopyWith<$Res> {
  factory _$$_AccountRecordCopyWith(
          _$_AccountRecord value, $Res Function(_$_AccountRecord) then) =
      __$$_AccountRecordCopyWithImpl<$Res>;
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
class __$$_AccountRecordCopyWithImpl<$Res>
    extends _$AccountRecordCopyWithImpl<$Res, _$_AccountRecord>
    implements _$$_AccountRecordCopyWith<$Res> {
  __$$_AccountRecordCopyWithImpl(
      _$_AccountRecord _value, $Res Function(_$_AccountRecord) _then)
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
    return _then(_$_AccountRecord(
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
class _$_AccountRecord implements _AccountRecord {
  const _$_AccountRecord(
      {this.contact, this.amount, this.title, this.dateTime, this.cleared});

  factory _$_AccountRecord.fromJson(Map<String, dynamic> json) =>
      _$$_AccountRecordFromJson(json);

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
    return 'AccountRecord(contact: $contact, amount: $amount, title: $title, dateTime: $dateTime, cleared: $cleared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountRecord &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.cleared, cleared) || other.cleared == cleared));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contact, amount, title, dateTime, cleared);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountRecordCopyWith<_$_AccountRecord> get copyWith =>
      __$$_AccountRecordCopyWithImpl<_$_AccountRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountRecordToJson(
      this,
    );
  }
}

abstract class _AccountRecord implements AccountRecord {
  const factory _AccountRecord(
      {final AppContact? contact,
      final int? amount,
      final String? title,
      final DateTime? dateTime,
      final bool? cleared}) = _$_AccountRecord;

  factory _AccountRecord.fromJson(Map<String, dynamic> json) =
      _$_AccountRecord.fromJson;

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
  _$$_AccountRecordCopyWith<_$_AccountRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
