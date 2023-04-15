// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoPaginationDto _$$_PhotoPaginationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_PhotoPaginationDto(
      page: json['page'] as int,
      pages: json['pages'] as int,
      perpage: json['perpage'] as int,
      total: json['total'] as int,
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhotoPaginationDtoToJson(
        _$_PhotoPaginationDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pages': instance.pages,
      'perpage': instance.perpage,
      'total': instance.total,
      'photo': instance.photo,
    };
