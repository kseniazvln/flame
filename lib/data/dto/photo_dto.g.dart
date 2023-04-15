// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoDto _$$_PhotoDtoFromJson(Map<String, dynamic> json) => _$_PhotoDto(
      id: json['id'] as String,
      owner: json['owner'] as String,
      secret: json['secret'] as String,
      server: json['server'] as String,
      farm: json['farm'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_PhotoDtoToJson(_$_PhotoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'secret': instance.secret,
      'server': instance.server,
      'farm': instance.farm,
      'title': instance.title,
    };
