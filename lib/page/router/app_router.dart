import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/auth_page/auth_page.dart';
import 'package:flame/page/chat_list_page/chat_list_page.dart';
import 'package:flame/page/code_page/code_page.dart';
import 'package:flame/page/explore_page/explore_page.dart';
import 'package:flame/page/home_page/home_page_widget.dart';
import 'package:flame/page/phone_page/phone_page.dart';
import 'package:flame/page/profile_page/profile_page.dart';
import 'package:flame/page/search_page/search_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: PhoneRoute.page,
        ),
        AutoRoute(
          page: CodeRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          // initial: true,
          children: [
            AutoRoute(
              page: SearchTab.page,
              children: [
                AutoRoute(
                  page: SearchRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ExploreTab.page,
              children: [
                AutoRoute(
                  page: ExploreRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ChatTab.page,
              children: [
                AutoRoute(
                  page: ChatListRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'SearchTab')
class SearchTabPage extends AutoRouter {
  const SearchTabPage({super.key});
}

@RoutePage(name: 'ExploreTab')
class ExploreTabPage extends AutoRouter {
  const ExploreTabPage({super.key});
}

@RoutePage(name: 'ChatTab')
class ChatTabPage extends AutoRouter {
  const ChatTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
