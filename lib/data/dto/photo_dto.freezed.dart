// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoDto _$PhotoDtoFromJson(Map<String, dynamic> json) {
  return _PhotoDto.fromJson(json);
}

/// @nodoc
mixin _$PhotoDto {
  String get id => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  String get server => throw _privateConstructorUsedError;
  int get farm => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDtoCopyWith<PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDtoCopyWith<$Res> {
  factory $PhotoDtoCopyWith(PhotoDto value, $Res Function(PhotoDto) then) =
      _$PhotoDtoCopyWithImpl<$Res, PhotoDto>;
  @useResult
  $Res call(
      {String id,
      String owner,
      String secret,
      String server,
      int farm,
      String title});
}

/// @nodoc
class _$PhotoDtoCopyWithImpl<$Res, $Val extends PhotoDto>
    implements $PhotoDtoCopyWith<$Res> {
  _$PhotoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? secret = null,
    Object? server = null,
    Object? farm = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotoDtoCopyWith<$Res> implements $PhotoDtoCopyWith<$Res> {
  factory _$$_PhotoDtoCopyWith(
          _$_PhotoDto value, $Res Function(_$_PhotoDto) then) =
      __$$_PhotoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String owner,
      String secret,
      String server,
      int farm,
      String title});
}

/// @nodoc
class __$$_PhotoDtoCopyWithImpl<$Res>
    extends _$PhotoDtoCopyWithImpl<$Res, _$_PhotoDto>
    implements _$$_PhotoDtoCopyWith<$Res> {
  __$$_PhotoDtoCopyWithImpl(
      _$_PhotoDto _value, $Res Function(_$_PhotoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? secret = null,
    Object? server = null,
    Object? farm = null,
    Object? title = null,
  }) {
    return _then(_$_PhotoDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoDto implements _PhotoDto {
  _$_PhotoDto(
      {required this.id,
      required this.owner,
      required this.secret,
      required this.server,
      required this.farm,
      required this.title});

  factory _$_PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoDtoFromJson(json);

  @override
  final String id;
  @override
  final String owner;
  @override
  final String secret;
  @override
  final String server;
  @override
  final int farm;
  @override
  final String title;

  @override
  String toString() {
    return 'PhotoDto(id: $id, owner: $owner, secret: $secret, server: $server, farm: $farm, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.farm, farm) || other.farm == farm) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, owner, secret, server, farm, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoDtoCopyWith<_$_PhotoDto> get copyWith =>
      __$$_PhotoDtoCopyWithImpl<_$_PhotoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoDtoToJson(
      this,
    );
  }
}

abstract class _PhotoDto implements PhotoDto {
  factory _PhotoDto(
      {required final String id,
      required final String owner,
      required final String secret,
      required final String server,
      required final int farm,
      required final String title}) = _$_PhotoDto;

  factory _PhotoDto.fromJson(Map<String, dynamic> json) = _$_PhotoDto.fromJson;

  @override
  String get id;
  @override
  String get owner;
  @override
  String get secret;
  @override
  String get server;
  @override
  int get farm;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoDtoCopyWith<_$_PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
