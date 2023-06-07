import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/entity/user_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'chat_message.dart';
import 'chat_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatPage module
@RoutePage()
class ChatPageWidget extends ElementaryWidget<IChatPageWidgetModel> {
  const ChatPageWidget({
    Key? key,
    required this.userChat,
    WidgetModelFactory wmFactory = defaultChatPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final UserChat userChat;

  @override
  Widget build(IChatPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(userChat.image),
          ),
          title: Text(
            userChat.name,
            style: wm.textTheme.headlineMedium
                ?.copyWith(color: wm.colorScheme.onBackground),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 10,
              child: EntityStateNotifierBuilder(
                listenableEntityState: wm.messagesState,
                loadingBuilder: (context, value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                builder: (context, value) {
                  final messages = value ?? [];

                  if (messages.isEmpty) {
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
                              'There is no messages yet',
                              style: wm.textTheme.headlineMedium?.copyWith(
                                color: wm.colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.separated(
                    reverse: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    itemCount: messages.length,
                    separatorBuilder: (_, __) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      final mine = message.from == userChat.from;

                      return Align(
                        alignment:
                            mine ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: mine
                                ? wm.colorScheme.surfaceVariant
                                : wm.colorScheme.tertiaryContainer,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: TimestampedChatMessage(
                            text: message.message,
                            sentAt: DateFormat('hh:mm').format(
                              DateTime.fromMillisecondsSinceEpoch(
                                message.timestamp,
                              ),
                            ),
                            style: wm.textTheme.bodyMedium?.copyWith(
                              color: mine
                                  ? wm.colorScheme.onSurfaceVariant
                                  : wm.colorScheme.onTertiaryContainer,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                color: wm.colorScheme.surfaceVariant,
                child: Row(
                  children: [
                    const Expanded(
                      child: Icon(
                        CupertinoIcons.chat_bubble_text,
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: TextField(
                        controller: wm.messageController,
                        style: wm.textTheme.bodyMedium
                            ?.copyWith(color: wm.colorScheme.onSurfaceVariant),
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Message'),
                        keyboardType: TextInputType.multiline,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1000),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AnimatedBuilder(
                        animation: wm.messageController,
                        builder: (context, _) {
                          return IconButton(
                            onPressed: wm.messageController.text.isNotEmpty
                                ? wm.sendMessage
                                : null,
                            icon: const Icon(Icons.send),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
