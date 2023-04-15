// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotosListDto _$PhotosListDtoFromJson(Map<String, dynamic> json) {
  return _PhotosListDto.fromJson(json);
}

/// @nodoc
mixin _$PhotosListDto {
  PhotoPaginationDto get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosListDtoCopyWith<PhotosListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosListDtoCopyWith<$Res> {
  factory $PhotosListDtoCopyWith(
          PhotosListDto value, $Res Function(PhotosListDto) then) =
      _$PhotosListDtoCopyWithImpl<$Res, PhotosListDto>;
  @useResult
  $Res call({PhotoPaginationDto photos});

  $PhotoPaginationDtoCopyWith<$Res> get photos;
}

/// @nodoc
class _$PhotosListDtoCopyWithImpl<$Res, $Val extends PhotosListDto>
    implements $PhotosListDtoCopyWith<$Res> {
  _$PhotosListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as PhotoPaginationDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoPaginationDtoCopyWith<$Res> get photos {
    return $PhotoPaginationDtoCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotosListDtoCopyWith<$Res>
    implements $PhotosListDtoCopyWith<$Res> {
  factory _$$_PhotosListDtoCopyWith(
          _$_PhotosListDto value, $Res Function(_$_PhotosListDto) then) =
      __$$_PhotosListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhotoPaginationDto photos});

  @override
  $PhotoPaginationDtoCopyWith<$Res> get photos;
}

/// @nodoc
class __$$_PhotosListDtoCopyWithImpl<$Res>
    extends _$PhotosListDtoCopyWithImpl<$Res, _$_PhotosListDto>
    implements _$$_PhotosListDtoCopyWith<$Res> {
  __$$_PhotosListDtoCopyWithImpl(
      _$_PhotosListDto _value, $Res Function(_$_PhotosListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$_PhotosListDto(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as PhotoPaginationDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotosListDto implements _PhotosListDto {
  _$_PhotosListDto({required this.photos});

  factory _$_PhotosListDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosListDtoFromJson(json);

  @override
  final PhotoPaginationDto photos;

  @override
  String toString() {
    return 'PhotosListDto(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosListDto &&
            (identical(other.photos, photos) || other.photos == photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosListDtoCopyWith<_$_PhotosListDto> get copyWith =>
      __$$_PhotosListDtoCopyWithImpl<_$_PhotosListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosListDtoToJson(
      this,
    );
  }
}

abstract class _PhotosListDto implements PhotosListDto {
  factory _PhotosListDto({required final PhotoPaginationDto photos}) =
      _$_PhotosListDto;

  factory _PhotosListDto.fromJson(Map<String, dynamic> json) =
      _$_PhotosListDto.fromJson;

  @override
  PhotoPaginationDto get photos;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosListDtoCopyWith<_$_PhotosListDto> get copyWith =>
      throw _privateConstructorUsedError;
}
