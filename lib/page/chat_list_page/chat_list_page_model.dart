import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/data/repository/chat_repository.dart';
import 'package:flame/data/repository/message_repository.dart';
import 'package:flame/domain/profile_service.dart';
import 'package:flame/entity/chat.dart';
import 'package:flame/entity/user_chat.dart';

// TODO: cover with documentation
/// Default Elementary model for ChatListPage module
class ChatListPageModel extends ElementaryModel {
  ChatListPageModel({
    super.errorHandler,
    required this.chatRepository,
    required this.messageRepository,
    required this.profileService,
  });

  final MessageRepository messageRepository;
  final ProfileService profileService;
  final ChatRepository chatRepository;

  Stream<List<UserChat>> get chats =>
      chatRepository.getChats().asyncMap(_mapChatUser);

  Future<List<UserChat>> _mapChatUser(List<Chat> chats) async {
    final currentUser = FirebaseAuth.instance.currentUser?.uid;

    final userChats = <UserChat>[];
    for (final chat in chats) {
      if (chat.participant.length != 2) {
        continue;
      }

      final otherId = chat.participant.firstWhere((id) => id != currentUser);
      final user = await profileService.getUser(otherId);
      final message = await messageRepository.getLastMessage(chat.chatId);

      userChats.add(
        UserChat(
          chatId: chat.chatId,
          from: currentUser!,
          to: user!.id,
          name: user.name,
          image: user.pictures.firstOrNull ?? '',
          lastMessage: message?.message,
        ),
      );
    }

    return userChats;
  }
}
