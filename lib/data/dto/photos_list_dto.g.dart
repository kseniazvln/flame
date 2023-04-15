// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotosListDto _$$_PhotosListDtoFromJson(Map<String, dynamic> json) =>
    _$_PhotosListDto(
      photos:
          PhotoPaginationDto.fromJson(json['photos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotosListDtoToJson(_$_PhotosListDto instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
