import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_list_page_model.dart';
import 'chat_list_page_widget.dart';

abstract class IChatListPageWidgetModel extends IWidgetModel {
}

ChatListPageWidgetModel defaultChatListPageWidgetModelFactory(BuildContext context) {
  return ChatListPageWidgetModel(ChatListPageModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for ChatListPageWidget
class ChatListPageWidgetModel extends WidgetModel<ChatListPageWidget, ChatListPageModel>
    implements IChatListPageWidgetModel {

  ChatListPageWidgetModel(ChatListPageModel model) : super(model);
}
