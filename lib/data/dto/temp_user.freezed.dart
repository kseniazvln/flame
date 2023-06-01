// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempUser _$TempUserFromJson(Map<String, dynamic> json) {
  return _TempUser.fromJson(json);
}

/// @nodoc
mixin _$TempUser {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  Sex? get sex => throw _privateConstructorUsedError;
  Sex? get search => throw _privateConstructorUsedError;
  Orientation? get orientation => throw _privateConstructorUsedError;
  List<String>? get pictures => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempUserCopyWith<TempUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempUserCopyWith<$Res> {
  factory $TempUserCopyWith(TempUser value, $Res Function(TempUser) then) =
      _$TempUserCopyWithImpl<$Res, TempUser>;
  @useResult
  $Res call(
      {String id,
      String? name,
      DateTime? birthday,
      Sex? sex,
      Sex? search,
      Orientation? orientation,
      List<String>? pictures,
      List<String>? interests,
      bool verified});
}

/// @nodoc
class _$TempUserCopyWithImpl<$Res, $Val extends TempUser>
    implements $TempUserCopyWith<$Res> {
  _$TempUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? sex = freezed,
    Object? search = freezed,
    Object? orientation = freezed,
    Object? pictures = freezed,
    Object? interests = freezed,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Sex?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempUserCopyWith<$Res> implements $TempUserCopyWith<$Res> {
  factory _$$_TempUserCopyWith(
          _$_TempUser value, $Res Function(_$_TempUser) then) =
      __$$_TempUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      DateTime? birthday,
      Sex? sex,
      Sex? search,
      Orientation? orientation,
      List<String>? pictures,
      List<String>? interests,
      bool verified});
}

/// @nodoc
class __$$_TempUserCopyWithImpl<$Res>
    extends _$TempUserCopyWithImpl<$Res, _$_TempUser>
    implements _$$_TempUserCopyWith<$Res> {
  __$$_TempUserCopyWithImpl(
      _$_TempUser _value, $Res Function(_$_TempUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? sex = freezed,
    Object? search = freezed,
    Object? orientation = freezed,
    Object? pictures = freezed,
    Object? interests = freezed,
    Object? verified = null,
  }) {
    return _then(_$_TempUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Sex?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation?,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempUser implements _TempUser {
  _$_TempUser(
      {required this.id,
      this.name,
      this.birthday,
      this.sex,
      this.search,
      this.orientation,
      final List<String>? pictures,
      final List<String>? interests,
      required this.verified})
      : _pictures = pictures,
        _interests = interests;

  factory _$_TempUser.fromJson(Map<String, dynamic> json) =>
      _$$_TempUserFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final DateTime? birthday;
  @override
  final Sex? sex;
  @override
  final Sex? search;
  @override
  final Orientation? orientation;
  final List<String>? _pictures;
  @override
  List<String>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool verified;

  @override
  String toString() {
    return 'TempUser(id: $id, name: $name, birthday: $birthday, sex: $sex, search: $search, orientation: $orientation, pictures: $pictures, interests: $interests, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      birthday,
      sex,
      search,
      orientation,
      const DeepCollectionEquality().hash(_pictures),
      const DeepCollectionEquality().hash(_interests),
      verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempUserCopyWith<_$_TempUser> get copyWith =>
      __$$_TempUserCopyWithImpl<_$_TempUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempUserToJson(
      this,
    );
  }
}

abstract class _TempUser implements TempUser {
  factory _TempUser(
      {required final String id,
      final String? name,
      final DateTime? birthday,
      final Sex? sex,
      final Sex? search,
      final Orientation? orientation,
      final List<String>? pictures,
      final List<String>? interests,
      required final bool verified}) = _$_TempUser;

  factory _TempUser.fromJson(Map<String, dynamic> json) = _$_TempUser.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  DateTime? get birthday;
  @override
  Sex? get sex;
  @override
  Sex? get search;
  @override
  Orientation? get orientation;
  @override
  List<String>? get pictures;
  @override
  List<String>? get interests;
  @override
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$_TempUserCopyWith<_$_TempUser> get copyWith =>
      throw _privateConstructorUsedError;
}
