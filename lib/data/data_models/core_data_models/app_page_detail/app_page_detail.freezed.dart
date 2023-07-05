// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_page_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppPageDetail _$AppPageDetailFromJson(Map<String, dynamic> json) {
  return _AppPageDetail.fromJson(json);
}

/// @nodoc
mixin _$AppPageDetail {
  String? get pageName => throw _privateConstructorUsedError;
  String? get pageRoute => throw _privateConstructorUsedError;
  int? get bottomBarItemNumber => throw _privateConstructorUsedError;
  String? get bottomBarIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPageDetailCopyWith<AppPageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPageDetailCopyWith<$Res> {
  factory $AppPageDetailCopyWith(
          AppPageDetail value, $Res Function(AppPageDetail) then) =
      _$AppPageDetailCopyWithImpl<$Res, AppPageDetail>;
  @useResult
  $Res call(
      {String? pageName,
      String? pageRoute,
      int? bottomBarItemNumber,
      String? bottomBarIcon});
}

/// @nodoc
class _$AppPageDetailCopyWithImpl<$Res, $Val extends AppPageDetail>
    implements $AppPageDetailCopyWith<$Res> {
  _$AppPageDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageName = freezed,
    Object? pageRoute = freezed,
    Object? bottomBarItemNumber = freezed,
    Object? bottomBarIcon = freezed,
  }) {
    return _then(_value.copyWith(
      pageName: freezed == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      pageRoute: freezed == pageRoute
          ? _value.pageRoute
          : pageRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      bottomBarItemNumber: freezed == bottomBarItemNumber
          ? _value.bottomBarItemNumber
          : bottomBarItemNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      bottomBarIcon: freezed == bottomBarIcon
          ? _value.bottomBarIcon
          : bottomBarIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppPageDetailCopyWith<$Res>
    implements $AppPageDetailCopyWith<$Res> {
  factory _$$_AppPageDetailCopyWith(
          _$_AppPageDetail value, $Res Function(_$_AppPageDetail) then) =
      __$$_AppPageDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pageName,
      String? pageRoute,
      int? bottomBarItemNumber,
      String? bottomBarIcon});
}

/// @nodoc
class __$$_AppPageDetailCopyWithImpl<$Res>
    extends _$AppPageDetailCopyWithImpl<$Res, _$_AppPageDetail>
    implements _$$_AppPageDetailCopyWith<$Res> {
  __$$_AppPageDetailCopyWithImpl(
      _$_AppPageDetail _value, $Res Function(_$_AppPageDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageName = freezed,
    Object? pageRoute = freezed,
    Object? bottomBarItemNumber = freezed,
    Object? bottomBarIcon = freezed,
  }) {
    return _then(_$_AppPageDetail(
      pageName: freezed == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      pageRoute: freezed == pageRoute
          ? _value.pageRoute
          : pageRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      bottomBarItemNumber: freezed == bottomBarItemNumber
          ? _value.bottomBarItemNumber
          : bottomBarItemNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      bottomBarIcon: freezed == bottomBarIcon
          ? _value.bottomBarIcon
          : bottomBarIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppPageDetail implements _AppPageDetail {
  const _$_AppPageDetail(
      {this.pageName,
      this.pageRoute,
      this.bottomBarItemNumber,
      this.bottomBarIcon});

  factory _$_AppPageDetail.fromJson(Map<String, dynamic> json) =>
      _$$_AppPageDetailFromJson(json);

  @override
  final String? pageName;
  @override
  final String? pageRoute;
  @override
  final int? bottomBarItemNumber;
  @override
  final String? bottomBarIcon;

  @override
  String toString() {
    return 'AppPageDetail(pageName: $pageName, pageRoute: $pageRoute, bottomBarItemNumber: $bottomBarItemNumber, bottomBarIcon: $bottomBarIcon)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppPageDetailCopyWith<_$_AppPageDetail> get copyWith =>
      __$$_AppPageDetailCopyWithImpl<_$_AppPageDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppPageDetailToJson(
      this,
    );
  }
}

abstract class _AppPageDetail implements AppPageDetail {
  const factory _AppPageDetail(
      {final String? pageName,
      final String? pageRoute,
      final int? bottomBarItemNumber,
      final String? bottomBarIcon}) = _$_AppPageDetail;

  factory _AppPageDetail.fromJson(Map<String, dynamic> json) =
      _$_AppPageDetail.fromJson;

  @override
  String? get pageName;
  @override
  String? get pageRoute;
  @override
  int? get bottomBarItemNumber;
  @override
  String? get bottomBarIcon;
  @override
  @JsonKey(ignore: true)
  _$$_AppPageDetailCopyWith<_$_AppPageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

AppPageDetailsList _$AppPageDetailsListFromJson(Map<String, dynamic> json) {
  return _AppPageDetailsList.fromJson(json);
}

/// @nodoc
mixin _$AppPageDetailsList {
  List<AppPageDetail> get pageDetailsList => throw _privateConstructorUsedError;
  set pageDetailsList(List<AppPageDetail> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPageDetailsListCopyWith<AppPageDetailsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPageDetailsListCopyWith<$Res> {
  factory $AppPageDetailsListCopyWith(
          AppPageDetailsList value, $Res Function(AppPageDetailsList) then) =
      _$AppPageDetailsListCopyWithImpl<$Res, AppPageDetailsList>;
  @useResult
  $Res call({List<AppPageDetail> pageDetailsList});
}

/// @nodoc
class _$AppPageDetailsListCopyWithImpl<$Res, $Val extends AppPageDetailsList>
    implements $AppPageDetailsListCopyWith<$Res> {
  _$AppPageDetailsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageDetailsList = null,
  }) {
    return _then(_value.copyWith(
      pageDetailsList: null == pageDetailsList
          ? _value.pageDetailsList
          : pageDetailsList // ignore: cast_nullable_to_non_nullable
              as List<AppPageDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppPageDetailsListCopyWith<$Res>
    implements $AppPageDetailsListCopyWith<$Res> {
  factory _$$_AppPageDetailsListCopyWith(_$_AppPageDetailsList value,
          $Res Function(_$_AppPageDetailsList) then) =
      __$$_AppPageDetailsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppPageDetail> pageDetailsList});
}

/// @nodoc
class __$$_AppPageDetailsListCopyWithImpl<$Res>
    extends _$AppPageDetailsListCopyWithImpl<$Res, _$_AppPageDetailsList>
    implements _$$_AppPageDetailsListCopyWith<$Res> {
  __$$_AppPageDetailsListCopyWithImpl(
      _$_AppPageDetailsList _value, $Res Function(_$_AppPageDetailsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageDetailsList = null,
  }) {
    return _then(_$_AppPageDetailsList(
      pageDetailsList: null == pageDetailsList
          ? _value.pageDetailsList
          : pageDetailsList // ignore: cast_nullable_to_non_nullable
              as List<AppPageDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppPageDetailsList implements _AppPageDetailsList {
  _$_AppPageDetailsList({this.pageDetailsList = const <AppPageDetail>[]});

  factory _$_AppPageDetailsList.fromJson(Map<String, dynamic> json) =>
      _$$_AppPageDetailsListFromJson(json);

  @override
  @JsonKey()
  List<AppPageDetail> pageDetailsList;

  @override
  String toString() {
    return 'AppPageDetailsList(pageDetailsList: $pageDetailsList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppPageDetailsListCopyWith<_$_AppPageDetailsList> get copyWith =>
      __$$_AppPageDetailsListCopyWithImpl<_$_AppPageDetailsList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppPageDetailsListToJson(
      this,
    );
  }
}

abstract class _AppPageDetailsList implements AppPageDetailsList {
  factory _AppPageDetailsList({List<AppPageDetail> pageDetailsList}) =
      _$_AppPageDetailsList;

  factory _AppPageDetailsList.fromJson(Map<String, dynamic> json) =
      _$_AppPageDetailsList.fromJson;

  @override
  List<AppPageDetail> get pageDetailsList;
  set pageDetailsList(List<AppPageDetail> value);
  @override
  @JsonKey(ignore: true)
  _$$_AppPageDetailsListCopyWith<_$_AppPageDetailsList> get copyWith =>
      throw _privateConstructorUsedError;
}
