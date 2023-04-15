// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flame_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlameUser _$FlameUserFromJson(Map<String, dynamic> json) {
  return _FlameUser.fromJson(json);
}

/// @nodoc
mixin _$FlameUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  Sex get search => throw _privateConstructorUsedError;
  Orientation get orientation => throw _privateConstructorUsedError;
  List<String> get pictures => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlameUserCopyWith<FlameUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlameUserCopyWith<$Res> {
  factory $FlameUserCopyWith(FlameUser value, $Res Function(FlameUser) then) =
      _$FlameUserCopyWithImpl<$Res, FlameUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      Sex sex,
      Sex search,
      Orientation orientation,
      List<String> pictures,
      List<String> interests});
}

/// @nodoc
class _$FlameUserCopyWithImpl<$Res, $Val extends FlameUser>
    implements $FlameUserCopyWith<$Res> {
  _$FlameUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthday = null,
    Object? sex = null,
    Object? search = null,
    Object? orientation = null,
    Object? pictures = null,
    Object? interests = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Sex,
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlameUserCopyWith<$Res> implements $FlameUserCopyWith<$Res> {
  factory _$$_FlameUserCopyWith(
          _$_FlameUser value, $Res Function(_$_FlameUser) then) =
      __$$_FlameUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      Sex sex,
      Sex search,
      Orientation orientation,
      List<String> pictures,
      List<String> interests});
}

/// @nodoc
class __$$_FlameUserCopyWithImpl<$Res>
    extends _$FlameUserCopyWithImpl<$Res, _$_FlameUser>
    implements _$$_FlameUserCopyWith<$Res> {
  __$$_FlameUserCopyWithImpl(
      _$_FlameUser _value, $Res Function(_$_FlameUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthday = null,
    Object? sex = null,
    Object? search = null,
    Object? orientation = null,
    Object? pictures = null,
    Object? interests = null,
  }) {
    return _then(_$_FlameUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as Sex,
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlameUser implements _FlameUser {
  _$_FlameUser(
      {required this.id,
      required this.name,
      required this.birthday,
      required this.sex,
      required this.search,
      required this.orientation,
      required final List<String> pictures,
      required final List<String> interests})
      : _pictures = pictures,
        _interests = interests;

  factory _$_FlameUser.fromJson(Map<String, dynamic> json) =>
      _$$_FlameUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime birthday;
  @override
  final Sex sex;
  @override
  final Sex search;
  @override
  final Orientation orientation;
  final List<String> _pictures;
  @override
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  final List<String> _interests;
  @override
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  String toString() {
    return 'FlameUser(id: $id, name: $name, birthday: $birthday, sex: $sex, search: $search, orientation: $orientation, pictures: $pictures, interests: $interests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlameUser &&
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
                .equals(other._interests, _interests));
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
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlameUserCopyWith<_$_FlameUser> get copyWith =>
      __$$_FlameUserCopyWithImpl<_$_FlameUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlameUserToJson(
      this,
    );
  }
}

abstract class _FlameUser implements FlameUser {
  factory _FlameUser(
      {required final String id,
      required final String name,
      required final DateTime birthday,
      required final Sex sex,
      required final Sex search,
      required final Orientation orientation,
      required final List<String> pictures,
      required final List<String> interests}) = _$_FlameUser;

  factory _FlameUser.fromJson(Map<String, dynamic> json) =
      _$_FlameUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get birthday;
  @override
  Sex get sex;
  @override
  Sex get search;
  @override
  Orientation get orientation;
  @override
  List<String> get pictures;
  @override
  List<String> get interests;
  @override
  @JsonKey(ignore: true)
  _$$_FlameUserCopyWith<_$_FlameUser> get copyWith =>
      throw _privateConstructorUsedError;
}
