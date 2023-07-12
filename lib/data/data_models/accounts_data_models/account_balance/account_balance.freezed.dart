// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBalance _$AccountBalanceFromJson(Map<String, dynamic> json) {
  return _AccountBalance.fromJson(json);
}

/// @nodoc
mixin _$AccountBalance {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalanceCopyWith<AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceCopyWith<$Res> {
  factory $AccountBalanceCopyWith(
          AccountBalance value, $Res Function(AccountBalance) then) =
      _$AccountBalanceCopyWithImpl<$Res, AccountBalance>;
  @useResult
  $Res call({AppContact? contact, int? balance, int? count});

  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AccountBalanceCopyWithImpl<$Res, $Val extends AccountBalance>
    implements $AccountBalanceCopyWith<$Res> {
  _$AccountBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? balance = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_AccountBalanceCopyWith<$Res>
    implements $AccountBalanceCopyWith<$Res> {
  factory _$$_AccountBalanceCopyWith(
          _$_AccountBalance value, $Res Function(_$_AccountBalance) then) =
      __$$_AccountBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppContact? contact, int? balance, int? count});

  @override
  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AccountBalanceCopyWithImpl<$Res>
    extends _$AccountBalanceCopyWithImpl<$Res, _$_AccountBalance>
    implements _$$_AccountBalanceCopyWith<$Res> {
  __$$_AccountBalanceCopyWithImpl(
      _$_AccountBalance _value, $Res Function(_$_AccountBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? balance = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_AccountBalance(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBalance implements _AccountBalance {
  const _$_AccountBalance({this.contact, this.balance, this.count});

  factory _$_AccountBalance.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBalanceFromJson(json);

  @override
  final AppContact? contact;
  @override
  final int? balance;
  @override
  final int? count;

  @override
  String toString() {
    return 'AccountBalance(contact: $contact, balance: $balance, count: $count)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      __$$_AccountBalanceCopyWithImpl<_$_AccountBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBalanceToJson(
      this,
    );
  }
}

abstract class _AccountBalance implements AccountBalance {
  const factory _AccountBalance(
      {final AppContact? contact,
      final int? balance,
      final int? count}) = _$_AccountBalance;

  factory _AccountBalance.fromJson(Map<String, dynamic> json) =
      _$_AccountBalance.fromJson;

  @override
  AppContact? get contact;
  @override
  int? get balance;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountBalancesList _$AccountBalancesListFromJson(Map<String, dynamic> json) {
  return _AccountBalancesList.fromJson(json);
}

/// @nodoc
mixin _$AccountBalancesList {
  List<AccountBalance> get balancesList => throw _privateConstructorUsedError;
  set balancesList(List<AccountBalance> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalancesListCopyWith<AccountBalancesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalancesListCopyWith<$Res> {
  factory $AccountBalancesListCopyWith(
          AccountBalancesList value, $Res Function(AccountBalancesList) then) =
      _$AccountBalancesListCopyWithImpl<$Res, AccountBalancesList>;
  @useResult
  $Res call({List<AccountBalance> balancesList});
}

/// @nodoc
class _$AccountBalancesListCopyWithImpl<$Res, $Val extends AccountBalancesList>
    implements $AccountBalancesListCopyWith<$Res> {
  _$AccountBalancesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancesList = null,
  }) {
    return _then(_value.copyWith(
      balancesList: null == balancesList
          ? _value.balancesList
          : balancesList // ignore: cast_nullable_to_non_nullable
              as List<AccountBalance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBalancesListCopyWith<$Res>
    implements $AccountBalancesListCopyWith<$Res> {
  factory _$$_AccountBalancesListCopyWith(_$_AccountBalancesList value,
          $Res Function(_$_AccountBalancesList) then) =
      __$$_AccountBalancesListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AccountBalance> balancesList});
}

/// @nodoc
class __$$_AccountBalancesListCopyWithImpl<$Res>
    extends _$AccountBalancesListCopyWithImpl<$Res, _$_AccountBalancesList>
    implements _$$_AccountBalancesListCopyWith<$Res> {
  __$$_AccountBalancesListCopyWithImpl(_$_AccountBalancesList _value,
      $Res Function(_$_AccountBalancesList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancesList = null,
  }) {
    return _then(_$_AccountBalancesList(
      balancesList: null == balancesList
          ? _value.balancesList
          : balancesList // ignore: cast_nullable_to_non_nullable
              as List<AccountBalance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBalancesList implements _AccountBalancesList {
  _$_AccountBalancesList({this.balancesList = const <AccountBalance>[]});

  factory _$_AccountBalancesList.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBalancesListFromJson(json);

  @override
  @JsonKey()
  List<AccountBalance> balancesList;

  @override
  String toString() {
    return 'AccountBalancesList(balancesList: $balancesList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalancesListCopyWith<_$_AccountBalancesList> get copyWith =>
      __$$_AccountBalancesListCopyWithImpl<_$_AccountBalancesList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBalancesListToJson(
      this,
    );
  }
}

abstract class _AccountBalancesList implements AccountBalancesList {
  factory _AccountBalancesList({List<AccountBalance> balancesList}) =
      _$_AccountBalancesList;

  factory _AccountBalancesList.fromJson(Map<String, dynamic> json) =
      _$_AccountBalancesList.fromJson;

  @override
  List<AccountBalance> get balancesList;
  set balancesList(List<AccountBalance> value);
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalancesListCopyWith<_$_AccountBalancesList> get copyWith =>
      throw _privateConstructorUsedError;
}
