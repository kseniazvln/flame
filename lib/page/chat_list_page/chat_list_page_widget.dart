import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chats'),
      ),
      body: StreamBuilder(
        stream: wm.chats,
        builder: (context, snapshot) {
          final chats = snapshot.data ?? [];

          if (chats.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      'assets/happy_flame.png',
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'There is no chats yet',
                      style: wm.textTheme.headlineMedium?.copyWith(
                        color: wm.colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return InkWell(
                onTap: () => wm.openChat(chat),
                child: Container(
                  height: 90,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(chat.image),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                chat.name,
                                style: wm.textTheme.titleLarge?.copyWith(
                                  color: wm.colorScheme.onBackground,
                                ),
                              ),
                              Text(
                                chat.lastMessage ??
                                    'Be the first, write a messsage',
                                style: wm.textTheme.bodyMedium?.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                  color: wm.colorScheme.onBackground,
                                ),
                              ),
                              const Divider(
                                thickness: 1,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
