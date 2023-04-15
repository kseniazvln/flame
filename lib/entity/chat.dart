import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
    factory Chat({
        required String chatId,
        required String alice,
        required String bob,
        required List<Message> messages,
}) = _Chat;

    factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}