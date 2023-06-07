import 'package:elementary/elementary.dart';
import 'package:flame/data/repository/message_repository.dart';
import 'package:flame/entity/message.dart';
import 'package:flame/entity/user_chat.dart';
import 'package:uuid/uuid.dart';

// TODO: cover with documentation
/// Default Elementary model for ChatPage module
class ChatPageModel extends ElementaryModel {
  ChatPageModel({
    super.errorHandler,
    required this.messageRepository,
  });

  final MessageRepository messageRepository;

  Stream<List<Message>> getMessagesStream(String chatId){
    return messageRepository.getMessages(chatId);
  }

  Message sendMessage(
    String text,
    UserChat userChat,
  ) {
    final id = const Uuid().v4();

    final message = Message(
      id: id,
      chatId: userChat.chatId,
      from: userChat.from,
      to: userChat.to,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      viewed: false,
      message: text,
    );

    messageRepository.postMessage(
      message,
    );

    return message;
  }

  void updateReadStatus(List<Message> event, String reciver) {
    event.where((m) => m.to == reciver).forEach((m) {
      messageRepository.postMessage(m.copyWith(
        viewed: true,
      ));
    });
  }
}
