import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
    factory Message({
        required String id,
        required String chatId,
        required String from,
        required String to,
        required int timestamp,
        required bool viewed,
        required String message,
}) = _Message;

    factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}