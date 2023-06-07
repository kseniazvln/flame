import 'package:elementary/elementary.dart';
import 'package:flame/entity/user_chat.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_list_page_model.dart';
import 'chat_list_page_widget.dart';

abstract class IChatListPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  Stream<List<UserChat>> get chats;

  void openChat(UserChat chat);
}

ChatListPageWidgetModel defaultChatListPageWidgetModelFactory(
    BuildContext context) {
  return ChatListPageWidgetModel(
    ChatListPageModel(
      errorHandler: context.read(),
      chatRepository: context.read(),
      profileService: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ChatListPageWidget
class ChatListPageWidgetModel
    extends WidgetModel<ChatListPageWidget, ChatListPageModel>
    with ThemeProvider
    implements IChatListPageWidgetModel {
  ChatListPageWidgetModel(ChatListPageModel model) : super(model);

  @override
  Stream<List<UserChat>> get chats => model.chats;

  @override
  void openChat(UserChat chat) {
    router.push(
      ChatRoute(userChat: chat),
    );
  }
}
