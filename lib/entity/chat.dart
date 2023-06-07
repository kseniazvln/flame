import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
    factory Chat({
        required String chatId,
        required List<String> participant,
}) = _Chat;

    factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}