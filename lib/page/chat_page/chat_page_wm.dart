import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flame/entity/message.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_page_model.dart';
import 'chat_page_widget.dart';

abstract class IChatPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get messageController;

  EntityStateNotifier<List<Message>> get messagesState;

  void sendMessage();
}

ChatPageWidgetModel defaultChatPageWidgetModelFactory(BuildContext context) {
  return ChatPageWidgetModel(
    ChatPageModel(
      errorHandler: context.read(),
      messageRepository: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ChatPageWidget
class ChatPageWidgetModel extends WidgetModel<ChatPageWidget, ChatPageModel>
    with ThemeProvider
    implements IChatPageWidgetModel {
  ChatPageWidgetModel(ChatPageModel model) : super(model);

  StreamSubscription? _messagesSubscribtion;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    var messagesStream = model.getMessagesStream(widget.userChat.chatId);
    _messagesSubscribtion = messagesStream.listen((event) {
      model.updateReadStatus(event, widget.userChat.from);
      messagesState.content(event);
    });
  }

  @override
  void sendMessage() {
     model.sendMessage(
      messageController.text,
      widget.userChat,
    );
     messageController.text = '';
  }

  @override
  final messageController = TextEditingController();

  @override
  void dispose() {
    _messagesSubscribtion?.cancel();
    messagesState.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  final messagesState = EntityStateNotifier();
}
