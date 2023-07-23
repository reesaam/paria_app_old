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

AppAccountBalance _$AppAccountBalanceFromJson(Map<String, dynamic> json) {
  return _AppAccountBalance.fromJson(json);
}

/// @nodoc
mixin _$AppAccountBalance {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountBalanceCopyWith<AppAccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountBalanceCopyWith<$Res> {
  factory $AppAccountBalanceCopyWith(
          AppAccountBalance value, $Res Function(AppAccountBalance) then) =
      _$AppAccountBalanceCopyWithImpl<$Res, AppAccountBalance>;
  @useResult
  $Res call({AppContact? contact, int? balance, int? count});

  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AppAccountBalanceCopyWithImpl<$Res, $Val extends AppAccountBalance>
    implements $AppAccountBalanceCopyWith<$Res> {
  _$AppAccountBalanceCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppAccountBalanceCopyWith<$Res>
    implements $AppAccountBalanceCopyWith<$Res> {
  factory _$$_AppAccountBalanceCopyWith(_$_AppAccountBalance value,
          $Res Function(_$_AppAccountBalance) then) =
      __$$_AppAccountBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppContact? contact, int? balance, int? count});

  @override
  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AppAccountBalanceCopyWithImpl<$Res>
    extends _$AppAccountBalanceCopyWithImpl<$Res, _$_AppAccountBalance>
    implements _$$_AppAccountBalanceCopyWith<$Res> {
  __$$_AppAccountBalanceCopyWithImpl(
      _$_AppAccountBalance _value, $Res Function(_$_AppAccountBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? balance = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_AppAccountBalance(
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
class _$_AppAccountBalance implements _AppAccountBalance {
  const _$_AppAccountBalance({this.contact, this.balance, this.count});

  factory _$_AppAccountBalance.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountBalanceFromJson(json);

  @override
  final AppContact? contact;
  @override
  final int? balance;
  @override
  final int? count;

  @override
  String toString() {
    return 'AppAccountBalance(contact: $contact, balance: $balance, count: $count)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountBalanceCopyWith<_$_AppAccountBalance> get copyWith =>
      __$$_AppAccountBalanceCopyWithImpl<_$_AppAccountBalance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountBalanceToJson(
      this,
    );
  }
}

abstract class _AppAccountBalance implements AppAccountBalance {
  const factory _AppAccountBalance(
      {final AppContact? contact,
      final int? balance,
      final int? count}) = _$_AppAccountBalance;

  factory _AppAccountBalance.fromJson(Map<String, dynamic> json) =
      _$_AppAccountBalance.fromJson;

  @override
  AppContact? get contact;
  @override
  int? get balance;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountBalanceCopyWith<_$_AppAccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

AppAccountBalancesList _$AppAccountBalancesListFromJson(
    Map<String, dynamic> json) {
  return _AppAccountBalancesList.fromJson(json);
}

/// @nodoc
mixin _$AppAccountBalancesList {
  List<AppAccountBalance> get balancesList =>
      throw _privateConstructorUsedError;
  set balancesList(List<AppAccountBalance> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountBalancesListCopyWith<AppAccountBalancesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountBalancesListCopyWith<$Res> {
  factory $AppAccountBalancesListCopyWith(AppAccountBalancesList value,
          $Res Function(AppAccountBalancesList) then) =
      _$AppAccountBalancesListCopyWithImpl<$Res, AppAccountBalancesList>;
  @useResult
  $Res call({List<AppAccountBalance> balancesList});
}

/// @nodoc
class _$AppAccountBalancesListCopyWithImpl<$Res,
        $Val extends AppAccountBalancesList>
    implements $AppAccountBalancesListCopyWith<$Res> {
  _$AppAccountBalancesListCopyWithImpl(this._value, this._then);

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
              as List<AppAccountBalance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppAccountBalancesListCopyWith<$Res>
    implements $AppAccountBalancesListCopyWith<$Res> {
  factory _$$_AppAccountBalancesListCopyWith(_$_AppAccountBalancesList value,
          $Res Function(_$_AppAccountBalancesList) then) =
      __$$_AppAccountBalancesListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccountBalance> balancesList});
}

/// @nodoc
class __$$_AppAccountBalancesListCopyWithImpl<$Res>
    extends _$AppAccountBalancesListCopyWithImpl<$Res,
        _$_AppAccountBalancesList>
    implements _$$_AppAccountBalancesListCopyWith<$Res> {
  __$$_AppAccountBalancesListCopyWithImpl(_$_AppAccountBalancesList _value,
      $Res Function(_$_AppAccountBalancesList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancesList = null,
  }) {
    return _then(_$_AppAccountBalancesList(
      balancesList: null == balancesList
          ? _value.balancesList
          : balancesList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountBalance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppAccountBalancesList implements _AppAccountBalancesList {
  _$_AppAccountBalancesList({this.balancesList = const <AppAccountBalance>[]});

  factory _$_AppAccountBalancesList.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountBalancesListFromJson(json);

  @override
  @JsonKey()
  List<AppAccountBalance> balancesList;

  @override
  String toString() {
    return 'AppAccountBalancesList(balancesList: $balancesList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountBalancesListCopyWith<_$_AppAccountBalancesList> get copyWith =>
      __$$_AppAccountBalancesListCopyWithImpl<_$_AppAccountBalancesList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountBalancesListToJson(
      this,
    );
  }
}

abstract class _AppAccountBalancesList implements AppAccountBalancesList {
  factory _AppAccountBalancesList({List<AppAccountBalance> balancesList}) =
      _$_AppAccountBalancesList;

  factory _AppAccountBalancesList.fromJson(Map<String, dynamic> json) =
      _$_AppAccountBalancesList.fromJson;

  @override
  List<AppAccountBalance> get balancesList;
  set balancesList(List<AppAccountBalance> value);
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountBalancesListCopyWith<_$_AppAccountBalancesList> get copyWith =>
      throw _privateConstructorUsedError;
}
