import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_chat.freezed.dart';

part 'user_chat.g.dart';

@freezed
class UserChat with _$UserChat {
  factory UserChat({
    required String chatId,
    required String from,
    required String to,
    required String name,
    required String image,
    String? lastMessage,
  }) = _UserChat;

  factory UserChat.fromJson(Map<String, dynamic> json) =>
      _$UserChatFromJson(json);
}
