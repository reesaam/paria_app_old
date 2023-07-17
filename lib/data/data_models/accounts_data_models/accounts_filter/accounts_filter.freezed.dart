// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountsFilter _$AccountsFilterFromJson(Map<String, dynamic> json) {
  return _AccountsFilter.fromJson(json);
}

/// @nodoc
mixin _$AccountsFilter {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get amountUp => throw _privateConstructorUsedError;
  int? get amountDown => throw _privateConstructorUsedError;
  DateTime? get dateTimeUp => throw _privateConstructorUsedError;
  DateTime? get dateTimeDown => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsFilterCopyWith<AccountsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsFilterCopyWith<$Res> {
  factory $AccountsFilterCopyWith(
          AccountsFilter value, $Res Function(AccountsFilter) then) =
      _$AccountsFilterCopyWithImpl<$Res, AccountsFilter>;
  @useResult
  $Res call(
      {AppContact? contact,
      int? amountUp,
      int? amountDown,
      DateTime? dateTimeUp,
      DateTime? dateTimeDown,
      String? description});

  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$AccountsFilterCopyWithImpl<$Res, $Val extends AccountsFilter>
    implements $AccountsFilterCopyWith<$Res> {
  _$AccountsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amountUp = freezed,
    Object? amountDown = freezed,
    Object? dateTimeUp = freezed,
    Object? dateTimeDown = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      amountUp: freezed == amountUp
          ? _value.amountUp
          : amountUp // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDown: freezed == amountDown
          ? _value.amountDown
          : amountDown // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTimeUp: freezed == dateTimeUp
          ? _value.dateTimeUp
          : dateTimeUp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTimeDown: freezed == dateTimeDown
          ? _value.dateTimeDown
          : dateTimeDown // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_AccountsFilterCopyWith<$Res>
    implements $AccountsFilterCopyWith<$Res> {
  factory _$$_AccountsFilterCopyWith(
          _$_AccountsFilter value, $Res Function(_$_AccountsFilter) then) =
      __$$_AccountsFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppContact? contact,
      int? amountUp,
      int? amountDown,
      DateTime? dateTimeUp,
      DateTime? dateTimeDown,
      String? description});

  @override
  $AppContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$_AccountsFilterCopyWithImpl<$Res>
    extends _$AccountsFilterCopyWithImpl<$Res, _$_AccountsFilter>
    implements _$$_AccountsFilterCopyWith<$Res> {
  __$$_AccountsFilterCopyWithImpl(
      _$_AccountsFilter _value, $Res Function(_$_AccountsFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? amountUp = freezed,
    Object? amountDown = freezed,
    Object? dateTimeUp = freezed,
    Object? dateTimeDown = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_AccountsFilter(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AppContact?,
      amountUp: freezed == amountUp
          ? _value.amountUp
          : amountUp // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDown: freezed == amountDown
          ? _value.amountDown
          : amountDown // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTimeUp: freezed == dateTimeUp
          ? _value.dateTimeUp
          : dateTimeUp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTimeDown: freezed == dateTimeDown
          ? _value.dateTimeDown
          : dateTimeDown // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountsFilter implements _AccountsFilter {
  const _$_AccountsFilter(
      {this.contact,
      this.amountUp,
      this.amountDown,
      this.dateTimeUp,
      this.dateTimeDown,
      this.description});

  factory _$_AccountsFilter.fromJson(Map<String, dynamic> json) =>
      _$$_AccountsFilterFromJson(json);

  @override
  final AppContact? contact;
  @override
  final int? amountUp;
  @override
  final int? amountDown;
  @override
  final DateTime? dateTimeUp;
  @override
  final DateTime? dateTimeDown;
  @override
  final String? description;

  @override
  String toString() {
    return 'AccountsFilter(contact: $contact, amountUp: $amountUp, amountDown: $amountDown, dateTimeUp: $dateTimeUp, dateTimeDown: $dateTimeDown, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountsFilterCopyWith<_$_AccountsFilter> get copyWith =>
      __$$_AccountsFilterCopyWithImpl<_$_AccountsFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountsFilterToJson(
      this,
    );
  }
}

abstract class _AccountsFilter implements AccountsFilter {
  const factory _AccountsFilter(
      {final AppContact? contact,
      final int? amountUp,
      final int? amountDown,
      final DateTime? dateTimeUp,
      final DateTime? dateTimeDown,
      final String? description}) = _$_AccountsFilter;

  factory _AccountsFilter.fromJson(Map<String, dynamic> json) =
      _$_AccountsFilter.fromJson;

  @override
  AppContact? get contact;
  @override
  int? get amountUp;
  @override
  int? get amountDown;
  @override
  DateTime? get dateTimeUp;
  @override
  DateTime? get dateTimeDown;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_AccountsFilterCopyWith<_$_AccountsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountsFiltersList _$AccountsFiltersListFromJson(Map<String, dynamic> json) {
  return _AccountsFiltersList.fromJson(json);
}

/// @nodoc
mixin _$AccountsFiltersList {
  List<AccountsFilter> get recordsList => throw _privateConstructorUsedError;
  set recordsList(List<AccountsFilter> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsFiltersListCopyWith<AccountsFiltersList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsFiltersListCopyWith<$Res> {
  factory $AccountsFiltersListCopyWith(
          AccountsFiltersList value, $Res Function(AccountsFiltersList) then) =
      _$AccountsFiltersListCopyWithImpl<$Res, AccountsFiltersList>;
  @useResult
  $Res call({List<AccountsFilter> recordsList});
}

/// @nodoc
class _$AccountsFiltersListCopyWithImpl<$Res, $Val extends AccountsFiltersList>
    implements $AccountsFiltersListCopyWith<$Res> {
  _$AccountsFiltersListCopyWithImpl(this._value, this._then);

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
              as List<AccountsFilter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountsFiltersListCopyWith<$Res>
    implements $AccountsFiltersListCopyWith<$Res> {
  factory _$$_AccountsFiltersListCopyWith(_$_AccountsFiltersList value,
          $Res Function(_$_AccountsFiltersList) then) =
      __$$_AccountsFiltersListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AccountsFilter> recordsList});
}

/// @nodoc
class __$$_AccountsFiltersListCopyWithImpl<$Res>
    extends _$AccountsFiltersListCopyWithImpl<$Res, _$_AccountsFiltersList>
    implements _$$_AccountsFiltersListCopyWith<$Res> {
  __$$_AccountsFiltersListCopyWithImpl(_$_AccountsFiltersList _value,
      $Res Function(_$_AccountsFiltersList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordsList = null,
  }) {
    return _then(_$_AccountsFiltersList(
      recordsList: null == recordsList
          ? _value.recordsList
          : recordsList // ignore: cast_nullable_to_non_nullable
              as List<AccountsFilter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountsFiltersList implements _AccountsFiltersList {
  _$_AccountsFiltersList({this.recordsList = const <AccountsFilter>[]});

  factory _$_AccountsFiltersList.fromJson(Map<String, dynamic> json) =>
      _$$_AccountsFiltersListFromJson(json);

  @override
  @JsonKey()
  List<AccountsFilter> recordsList;

  @override
  String toString() {
    return 'AccountsFiltersList(recordsList: $recordsList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountsFiltersListCopyWith<_$_AccountsFiltersList> get copyWith =>
      __$$_AccountsFiltersListCopyWithImpl<_$_AccountsFiltersList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountsFiltersListToJson(
      this,
    );
  }
}

abstract class _AccountsFiltersList implements AccountsFiltersList {
  factory _AccountsFiltersList({List<AccountsFilter> recordsList}) =
      _$_AccountsFiltersList;

  factory _AccountsFiltersList.fromJson(Map<String, dynamic> json) =
      _$_AccountsFiltersList.fromJson;

  @override
  List<AccountsFilter> get recordsList;
  set recordsList(List<AccountsFilter> value);
  @override
  @JsonKey(ignore: true)
  _$$_AccountsFiltersListCopyWith<_$_AccountsFiltersList> get copyWith =>
      throw _privateConstructorUsedError;
}
