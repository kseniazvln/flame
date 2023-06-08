// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExplorePhoto _$ExplorePhotoFromJson(Map<String, dynamic> json) {
  return _ExplorePhoto.fromJson(json);
}

/// @nodoc
mixin _$ExplorePhoto {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorePhotoCopyWith<ExplorePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorePhotoCopyWith<$Res> {
  factory $ExplorePhotoCopyWith(
          ExplorePhoto value, $Res Function(ExplorePhoto) then) =
      _$ExplorePhotoCopyWithImpl<$Res, ExplorePhoto>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$ExplorePhotoCopyWithImpl<$Res, $Val extends ExplorePhoto>
    implements $ExplorePhotoCopyWith<$Res> {
  _$ExplorePhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExplorePhotoCopyWith<$Res>
    implements $ExplorePhotoCopyWith<$Res> {
  factory _$$_ExplorePhotoCopyWith(
          _$_ExplorePhoto value, $Res Function(_$_ExplorePhoto) then) =
      __$$_ExplorePhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_ExplorePhotoCopyWithImpl<$Res>
    extends _$ExplorePhotoCopyWithImpl<$Res, _$_ExplorePhoto>
    implements _$$_ExplorePhotoCopyWith<$Res> {
  __$$_ExplorePhotoCopyWithImpl(
      _$_ExplorePhoto _value, $Res Function(_$_ExplorePhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_ExplorePhoto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplorePhoto implements _ExplorePhoto {
  _$_ExplorePhoto({required this.name, required this.url});

  factory _$_ExplorePhoto.fromJson(Map<String, dynamic> json) =>
      _$$_ExplorePhotoFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ExplorePhoto(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExplorePhoto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExplorePhotoCopyWith<_$_ExplorePhoto> get copyWith =>
      __$$_ExplorePhotoCopyWithImpl<_$_ExplorePhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExplorePhotoToJson(
      this,
    );
  }
}

abstract class _ExplorePhoto implements ExplorePhoto {
  factory _ExplorePhoto(
      {required final String name,
      required final String url}) = _$_ExplorePhoto;

  factory _ExplorePhoto.fromJson(Map<String, dynamic> json) =
      _$_ExplorePhoto.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ExplorePhotoCopyWith<_$_ExplorePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
