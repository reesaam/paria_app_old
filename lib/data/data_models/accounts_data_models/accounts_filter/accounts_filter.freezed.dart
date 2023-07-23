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

AppAccountsFilter _$AppAccountsFilterFromJson(Map<String, dynamic> json) {
  return _AppAccountsFilter.fromJson(json);
}

/// @nodoc
mixin _$AppAccountsFilter {
  AppContact? get contact => throw _privateConstructorUsedError;
  int? get amountUp => throw _privateConstructorUsedError;
  int? get amountDown => throw _privateConstructorUsedError;
  DateTime? get dateTimeUp => throw _privateConstructorUsedError;
  DateTime? get dateTimeDown => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountsFilterCopyWith<AppAccountsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountsFilterCopyWith<$Res> {
  factory $AppAccountsFilterCopyWith(
          AppAccountsFilter value, $Res Function(AppAccountsFilter) then) =
      _$AppAccountsFilterCopyWithImpl<$Res, AppAccountsFilter>;
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
class _$AppAccountsFilterCopyWithImpl<$Res, $Val extends AppAccountsFilter>
    implements $AppAccountsFilterCopyWith<$Res> {
  _$AppAccountsFilterCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppAccountsFilterCopyWith<$Res>
    implements $AppAccountsFilterCopyWith<$Res> {
  factory _$$_AppAccountsFilterCopyWith(_$_AppAccountsFilter value,
          $Res Function(_$_AppAccountsFilter) then) =
      __$$_AppAccountsFilterCopyWithImpl<$Res>;
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
class __$$_AppAccountsFilterCopyWithImpl<$Res>
    extends _$AppAccountsFilterCopyWithImpl<$Res, _$_AppAccountsFilter>
    implements _$$_AppAccountsFilterCopyWith<$Res> {
  __$$_AppAccountsFilterCopyWithImpl(
      _$_AppAccountsFilter _value, $Res Function(_$_AppAccountsFilter) _then)
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
    return _then(_$_AppAccountsFilter(
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
class _$_AppAccountsFilter implements _AppAccountsFilter {
  const _$_AppAccountsFilter(
      {this.contact,
      this.amountUp,
      this.amountDown,
      this.dateTimeUp,
      this.dateTimeDown,
      this.description});

  factory _$_AppAccountsFilter.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountsFilterFromJson(json);

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
    return 'AppAccountsFilter(contact: $contact, amountUp: $amountUp, amountDown: $amountDown, dateTimeUp: $dateTimeUp, dateTimeDown: $dateTimeDown, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountsFilterCopyWith<_$_AppAccountsFilter> get copyWith =>
      __$$_AppAccountsFilterCopyWithImpl<_$_AppAccountsFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountsFilterToJson(
      this,
    );
  }
}

abstract class _AppAccountsFilter implements AppAccountsFilter {
  const factory _AppAccountsFilter(
      {final AppContact? contact,
      final int? amountUp,
      final int? amountDown,
      final DateTime? dateTimeUp,
      final DateTime? dateTimeDown,
      final String? description}) = _$_AppAccountsFilter;

  factory _AppAccountsFilter.fromJson(Map<String, dynamic> json) =
      _$_AppAccountsFilter.fromJson;

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
  _$$_AppAccountsFilterCopyWith<_$_AppAccountsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

AppAccountsFiltersList _$AppAccountsFiltersListFromJson(
    Map<String, dynamic> json) {
  return _AppAccountsFiltersList.fromJson(json);
}

/// @nodoc
mixin _$AppAccountsFiltersList {
  List<AppAccountsFilter> get filtersList => throw _privateConstructorUsedError;
  set filtersList(List<AppAccountsFilter> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountsFiltersListCopyWith<AppAccountsFiltersList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountsFiltersListCopyWith<$Res> {
  factory $AppAccountsFiltersListCopyWith(AppAccountsFiltersList value,
          $Res Function(AppAccountsFiltersList) then) =
      _$AppAccountsFiltersListCopyWithImpl<$Res, AppAccountsFiltersList>;
  @useResult
  $Res call({List<AppAccountsFilter> filtersList});
}

/// @nodoc
class _$AppAccountsFiltersListCopyWithImpl<$Res,
        $Val extends AppAccountsFiltersList>
    implements $AppAccountsFiltersListCopyWith<$Res> {
  _$AppAccountsFiltersListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filtersList = null,
  }) {
    return _then(_value.copyWith(
      filtersList: null == filtersList
          ? _value.filtersList
          : filtersList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountsFilter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppAccountsFiltersListCopyWith<$Res>
    implements $AppAccountsFiltersListCopyWith<$Res> {
  factory _$$_AppAccountsFiltersListCopyWith(_$_AppAccountsFiltersList value,
          $Res Function(_$_AppAccountsFiltersList) then) =
      __$$_AppAccountsFiltersListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccountsFilter> filtersList});
}

/// @nodoc
class __$$_AppAccountsFiltersListCopyWithImpl<$Res>
    extends _$AppAccountsFiltersListCopyWithImpl<$Res,
        _$_AppAccountsFiltersList>
    implements _$$_AppAccountsFiltersListCopyWith<$Res> {
  __$$_AppAccountsFiltersListCopyWithImpl(_$_AppAccountsFiltersList _value,
      $Res Function(_$_AppAccountsFiltersList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filtersList = null,
  }) {
    return _then(_$_AppAccountsFiltersList(
      filtersList: null == filtersList
          ? _value.filtersList
          : filtersList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountsFilter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppAccountsFiltersList implements _AppAccountsFiltersList {
  _$_AppAccountsFiltersList({this.filtersList = const <AppAccountsFilter>[]});

  factory _$_AppAccountsFiltersList.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountsFiltersListFromJson(json);

  @override
  @JsonKey()
  List<AppAccountsFilter> filtersList;

  @override
  String toString() {
    return 'AppAccountsFiltersList(filtersList: $filtersList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountsFiltersListCopyWith<_$_AppAccountsFiltersList> get copyWith =>
      __$$_AppAccountsFiltersListCopyWithImpl<_$_AppAccountsFiltersList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountsFiltersListToJson(
      this,
    );
  }
}

abstract class _AppAccountsFiltersList implements AppAccountsFiltersList {
  factory _AppAccountsFiltersList({List<AppAccountsFilter> filtersList}) =
      _$_AppAccountsFiltersList;

  factory _AppAccountsFiltersList.fromJson(Map<String, dynamic> json) =
      _$_AppAccountsFiltersList.fromJson;

  @override
  List<AppAccountsFilter> get filtersList;
  set filtersList(List<AppAccountsFilter> value);
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountsFiltersListCopyWith<_$_AppAccountsFiltersList> get copyWith =>
      throw _privateConstructorUsedError;
}
