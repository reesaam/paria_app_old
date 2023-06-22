// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountItem _$AccountItemFromJson(Map<String, dynamic> json) {
  return _AccountItem.fromJson(json);
}

/// @nodoc
mixin _$AccountItem {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool? get solved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountItemCopyWith<AccountItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountItemCopyWith<$Res> {
  factory $AccountItemCopyWith(
          AccountItem value, $Res Function(AccountItem) then) =
      _$AccountItemCopyWithImpl<$Res, AccountItem>;
  @useResult
  $Res call(
      {AppContact? contact, int? amount, DateTime? dateTime, bool? solved});

  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AccountItemCopyWithImpl<$Res, $Val extends AccountItem>
    implements $AccountItemCopyWith<$Res> {
  _$AccountItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
    Object? solved = freezed,
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      solved: freezed == solved
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AccountItemCopyWith<$Res>
    implements $AccountItemCopyWith<$Res> {
  factory _$$_AccountItemCopyWith(
          _$_AccountItem value, $Res Function(_$_AccountItem) then) =
      __$$_AccountItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppContact? contact, int? amount, DateTime? dateTime, bool? solved});

  @override
  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AccountItemCopyWithImpl<$Res>
    extends _$AccountItemCopyWithImpl<$Res, _$_AccountItem>
    implements _$$_AccountItemCopyWith<$Res> {
  __$$_AccountItemCopyWithImpl(
      _$_AccountItem _value, $Res Function(_$_AccountItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
    Object? solved = freezed,
  }) {
    return _then(_$_AccountItem(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      solved: freezed == solved
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountItem implements _AccountItem {
  const _$_AccountItem({this.contact, this.amount, this.dateTime, this.solved});

  factory _$_AccountItem.fromJson(Map<String, dynamic> json) =>
      _$$_AccountItemFromJson(json);

  @override
  final AppContact? contact;
  @override
  final int? amount;
  @override
  final DateTime? dateTime;
  @override
  final bool? solved;

  @override
  String toString() {
    return 'AccountItem(contact: $contact, amount: $amount, dateTime: $dateTime, solved: $solved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountItem &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.solved, solved) || other.solved == solved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contact, amount, dateTime, solved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountItemCopyWith<_$_AccountItem> get copyWith =>
      __$$_AccountItemCopyWithImpl<_$_AccountItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountItemToJson(
      this,
    );
  }
}

abstract class _AccountItem implements AccountItem {
  const factory _AccountItem(
      {final AppContact? contact,
      final int? amount,
      final DateTime? dateTime,
      final bool? solved}) = _$_AccountItem;

  factory _AccountItem.fromJson(Map<String, dynamic> json) =
      _$_AccountItem.fromJson;

  @override
  AppContact? get contact;
  @override
  int? get amount;
  @override
  DateTime? get dateTime;
  @override
  bool? get solved;
  @override
  @JsonKey(ignore: true)
  _$$_AccountItemCopyWith<_$_AccountItem> get copyWith =>
      throw _privateConstructorUsedError;
}
