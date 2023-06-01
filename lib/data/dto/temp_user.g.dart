// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TempUser _$$_TempUserFromJson(Map<String, dynamic> json) => _$_TempUser(
      id: json['id'] as String,
      name: json['name'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']),
      search: $enumDecodeNullable(_$SexEnumMap, json['search']),
      orientation:
          $enumDecodeNullable(_$OrientationEnumMap, json['orientation']),
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_TempUserToJson(_$_TempUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday?.toIso8601String(),
      'sex': _$SexEnumMap[instance.sex],
      'search': _$SexEnumMap[instance.search],
      'orientation': _$OrientationEnumMap[instance.orientation],
      'pictures': instance.pictures,
      'interests': instance.interests,
      'verified': instance.verified,
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
