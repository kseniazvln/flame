import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'chat_list_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatListPage module
@RoutePage()
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
