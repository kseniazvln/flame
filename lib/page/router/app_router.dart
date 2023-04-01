import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "PageWidget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: SearchTab.page,
              children: [
                AutoRoute(
                  page: CategoryRoute.page,
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
