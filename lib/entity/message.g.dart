// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      timestamp: json['timestamp'] as int,
      viewed: json['viewed'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'from': instance.from,
      'to': instance.to,
      'timestamp': instance.timestamp,
      'viewed': instance.viewed,
      'message': instance.message,
    };
