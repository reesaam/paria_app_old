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
abstract class _$$AppAccountsFilterImplCopyWith<$Res>
    implements $AppAccountsFilterCopyWith<$Res> {
  factory _$$AppAccountsFilterImplCopyWith(_$AppAccountsFilterImpl value,
          $Res Function(_$AppAccountsFilterImpl) then) =
      __$$AppAccountsFilterImplCopyWithImpl<$Res>;
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
class __$$AppAccountsFilterImplCopyWithImpl<$Res>
    extends _$AppAccountsFilterCopyWithImpl<$Res, _$AppAccountsFilterImpl>
    implements _$$AppAccountsFilterImplCopyWith<$Res> {
  __$$AppAccountsFilterImplCopyWithImpl(_$AppAccountsFilterImpl _value,
      $Res Function(_$AppAccountsFilterImpl) _then)
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
    return _then(_$AppAccountsFilterImpl(
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
class _$AppAccountsFilterImpl implements _AppAccountsFilter {
  const _$AppAccountsFilterImpl(
      {this.contact,
      this.amountUp,
      this.amountDown,
      this.dateTimeUp,
      this.dateTimeDown,
      this.description});

  factory _$AppAccountsFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAccountsFilterImplFromJson(json);

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
  _$$AppAccountsFilterImplCopyWith<_$AppAccountsFilterImpl> get copyWith =>
      __$$AppAccountsFilterImplCopyWithImpl<_$AppAccountsFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAccountsFilterImplToJson(
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
      final String? description}) = _$AppAccountsFilterImpl;

  factory _AppAccountsFilter.fromJson(Map<String, dynamic> json) =
      _$AppAccountsFilterImpl.fromJson;

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
  _$$AppAccountsFilterImplCopyWith<_$AppAccountsFilterImpl> get copyWith =>
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
abstract class _$$AppAccountsFiltersListImplCopyWith<$Res>
    implements $AppAccountsFiltersListCopyWith<$Res> {
  factory _$$AppAccountsFiltersListImplCopyWith(
          _$AppAccountsFiltersListImpl value,
          $Res Function(_$AppAccountsFiltersListImpl) then) =
      __$$AppAccountsFiltersListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccountsFilter> filtersList});
}

/// @nodoc
class __$$AppAccountsFiltersListImplCopyWithImpl<$Res>
    extends _$AppAccountsFiltersListCopyWithImpl<$Res,
        _$AppAccountsFiltersListImpl>
    implements _$$AppAccountsFiltersListImplCopyWith<$Res> {
  __$$AppAccountsFiltersListImplCopyWithImpl(
      _$AppAccountsFiltersListImpl _value,
      $Res Function(_$AppAccountsFiltersListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filtersList = null,
  }) {
    return _then(_$AppAccountsFiltersListImpl(
      filtersList: null == filtersList
          ? _value.filtersList
          : filtersList // ignore: cast_nullable_to_non_nullable
              as List<AppAccountsFilter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppAccountsFiltersListImpl implements _AppAccountsFiltersList {
  _$AppAccountsFiltersListImpl(
      {this.filtersList = const <AppAccountsFilter>[]});

  factory _$AppAccountsFiltersListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAccountsFiltersListImplFromJson(json);

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
  _$$AppAccountsFiltersListImplCopyWith<_$AppAccountsFiltersListImpl>
      get copyWith => __$$AppAccountsFiltersListImplCopyWithImpl<
          _$AppAccountsFiltersListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAccountsFiltersListImplToJson(
      this,
    );
  }
}

abstract class _AppAccountsFiltersList implements AppAccountsFiltersList {
  factory _AppAccountsFiltersList({List<AppAccountsFilter> filtersList}) =
      _$AppAccountsFiltersListImpl;

  factory _AppAccountsFiltersList.fromJson(Map<String, dynamic> json) =
      _$AppAccountsFiltersListImpl.fromJson;

  @override
  List<AppAccountsFilter> get filtersList;
  set filtersList(List<AppAccountsFilter> value);
  @override
  @JsonKey(ignore: true)
  _$$AppAccountsFiltersListImplCopyWith<_$AppAccountsFiltersListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
