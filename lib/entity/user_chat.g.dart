// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserChat _$$_UserChatFromJson(Map<String, dynamic> json) => _$_UserChat(
      chatId: json['chatId'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      lastMessage: json['lastMessage'] as String?,
    );

Map<String, dynamic> _$$_UserChatToJson(_$_UserChat instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'from': instance.from,
      'to': instance.to,
      'name': instance.name,
      'image': instance.image,
      'lastMessage': instance.lastMessage,
    };
