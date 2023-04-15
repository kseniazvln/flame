// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flame_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlameUser _$$_FlameUserFromJson(Map<String, dynamic> json) => _$_FlameUser(
      id: json['id'] as String,
      name: json['name'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      search: $enumDecode(_$SexEnumMap, json['search']),
      orientation: $enumDecode(_$OrientationEnumMap, json['orientation']),
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FlameUserToJson(_$_FlameUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
      'sex': _$SexEnumMap[instance.sex]!,
      'search': _$SexEnumMap[instance.search]!,
      'orientation': _$OrientationEnumMap[instance.orientation]!,
      'pictures': instance.pictures,
      'interests': instance.interests,
    };

const _$SexEnumMap = {
  Sex.man: 'man',
  Sex.women: 'women',
  Sex.hidden: 'hidden',
};

const _$OrientationEnumMap = {
  Orientation.traditional: 'traditional',
  Orientation.bi: 'bi',
  Orientation.lgbtq: 'lgbtq',
};