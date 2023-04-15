// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoPaginationDto _$PhotoPaginationDtoFromJson(Map<String, dynamic> json) {
  return _PhotoPaginationDto.fromJson(json);
}

/// @nodoc
mixin _$PhotoPaginationDto {
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get perpage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<PhotoDto> get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoPaginationDtoCopyWith<PhotoPaginationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoPaginationDtoCopyWith<$Res> {
  factory $PhotoPaginationDtoCopyWith(
          PhotoPaginationDto value, $Res Function(PhotoPaginationDto) then) =
      _$PhotoPaginationDtoCopyWithImpl<$Res, PhotoPaginationDto>;
  @useResult
  $Res call(
      {int page, int pages, int perpage, int total, List<PhotoDto> photo});
}

/// @nodoc
class _$PhotoPaginationDtoCopyWithImpl<$Res, $Val extends PhotoPaginationDto>
    implements $PhotoPaginationDtoCopyWith<$Res> {
  _$PhotoPaginationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pages = null,
    Object? perpage = null,
    Object? total = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      perpage: null == perpage
          ? _value.perpage
          : perpage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotoPaginationDtoCopyWith<$Res>
    implements $PhotoPaginationDtoCopyWith<$Res> {
  factory _$$_PhotoPaginationDtoCopyWith(_$_PhotoPaginationDto value,
          $Res Function(_$_PhotoPaginationDto) then) =
      __$$_PhotoPaginationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, int pages, int perpage, int total, List<PhotoDto> photo});
}

/// @nodoc
class __$$_PhotoPaginationDtoCopyWithImpl<$Res>
    extends _$PhotoPaginationDtoCopyWithImpl<$Res, _$_PhotoPaginationDto>
    implements _$$_PhotoPaginationDtoCopyWith<$Res> {
  __$$_PhotoPaginationDtoCopyWithImpl(
      _$_PhotoPaginationDto _value, $Res Function(_$_PhotoPaginationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pages = null,
    Object? perpage = null,
    Object? total = null,
    Object? photo = null,
  }) {
    return _then(_$_PhotoPaginationDto(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      perpage: null == perpage
          ? _value.perpage
          : perpage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoPaginationDto implements _PhotoPaginationDto {
  _$_PhotoPaginationDto(
      {required this.page,
      required this.pages,
      required this.perpage,
      required this.total,
      required final List<PhotoDto> photo})
      : _photo = photo;

  factory _$_PhotoPaginationDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoPaginationDtoFromJson(json);

  @override
  final int page;
  @override
  final int pages;
  @override
  final int perpage;
  @override
  final int total;
  final List<PhotoDto> _photo;
  @override
  List<PhotoDto> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  @override
  String toString() {
    return 'PhotoPaginationDto(page: $page, pages: $pages, perpage: $perpage, total: $total, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoPaginationDto &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.perpage, perpage) || other.perpage == perpage) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._photo, _photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, pages, perpage, total,
      const DeepCollectionEquality().hash(_photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoPaginationDtoCopyWith<_$_PhotoPaginationDto> get copyWith =>
      __$$_PhotoPaginationDtoCopyWithImpl<_$_PhotoPaginationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoPaginationDtoToJson(
      this,
    );
  }
}

abstract class _PhotoPaginationDto implements PhotoPaginationDto {
  factory _PhotoPaginationDto(
      {required final int page,
      required final int pages,
      required final int perpage,
      required final int total,
      required final List<PhotoDto> photo}) = _$_PhotoPaginationDto;

  factory _PhotoPaginationDto.fromJson(Map<String, dynamic> json) =
      _$_PhotoPaginationDto.fromJson;

  @override
  int get page;
  @override
  int get pages;
  @override
  int get perpage;
  @override
  int get total;
  @override
  List<PhotoDto> get photo;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoPaginationDtoCopyWith<_$_PhotoPaginationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
