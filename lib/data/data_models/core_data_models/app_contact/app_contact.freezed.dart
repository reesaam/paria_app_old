// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppContact _$AppContactFromJson(Map<String, dynamic> json) {
  return _AppContact.fromJson(json);
}

/// @nodoc
mixin _$AppContact {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppContactCopyWith<AppContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppContactCopyWith<$Res> {
  factory $AppContactCopyWith(
          AppContact value, $Res Function(AppContact) then) =
      _$AppContactCopyWithImpl<$Res, AppContact>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? mobile,
      String profilePicture});
}

/// @nodoc
class _$AppContactCopyWithImpl<$Res, $Val extends AppContact>
    implements $AppContactCopyWith<$Res> {
  _$AppContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? mobile = freezed,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppContactCopyWith<$Res>
    implements $AppContactCopyWith<$Res> {
  factory _$$_AppContactCopyWith(
          _$_AppContact value, $Res Function(_$_AppContact) then) =
      __$$_AppContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? mobile,
      String profilePicture});
}

/// @nodoc
class __$$_AppContactCopyWithImpl<$Res>
    extends _$AppContactCopyWithImpl<$Res, _$_AppContact>
    implements _$$_AppContactCopyWith<$Res> {
  __$$_AppContactCopyWithImpl(
      _$_AppContact _value, $Res Function(_$_AppContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? mobile = freezed,
    Object? profilePicture = null,
  }) {
    return _then(_$_AppContact(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppContact implements _AppContact {
  const _$_AppContact(
      {this.firstName, this.lastName, this.mobile, this.profilePicture = ''});

  factory _$_AppContact.fromJson(Map<String, dynamic> json) =>
      _$$_AppContactFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? mobile;
  @override
  @JsonKey()
  final String profilePicture;

  @override
  String toString() {
    return 'AppContact(firstName: $firstName, lastName: $lastName, mobile: $mobile, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppContact &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, mobile, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppContactCopyWith<_$_AppContact> get copyWith =>
      __$$_AppContactCopyWithImpl<_$_AppContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppContactToJson(
      this,
    );
  }
}

abstract class _AppContact implements AppContact {
  const factory _AppContact(
      {final String? firstName,
      final String? lastName,
      final String? mobile,
      final String profilePicture}) = _$_AppContact;

  factory _AppContact.fromJson(Map<String, dynamic> json) =
      _$_AppContact.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get mobile;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_AppContactCopyWith<_$_AppContact> get copyWith =>
      throw _privateConstructorUsedError;
}
