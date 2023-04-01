import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'chat_list_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatListPage module
class ChatListPageWidget extends ElementaryWidget<IChatListPageWidgetModel> {
  const ChatListPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultChatListPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IChatListPageWidgetModel wm) {
    return Container();
  }
}
