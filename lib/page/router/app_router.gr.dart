// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    PhoneRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneRouteArgs>(
          orElse: () => const PhoneRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PhonePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePageWidget(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ChatListRoute.name: (routeData) {
      final args = routeData.argsAs<ChatListRouteArgs>(
          orElse: () => const ChatListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatListPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CodeRoute.name: (routeData) {
      final args =
          routeData.argsAs<CodeRouteArgs>(orElse: () => const CodeRouteArgs());
      return AutoRoutePage<String>(
        routeData: routeData,
        child: CodePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ExploreRoute.name: (routeData) {
      final args = routeData.argsAs<ExploreRouteArgs>(
          orElse: () => const ExploreRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExplorePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    SearchTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchTabPage(),
      );
    },
    ExploreTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExploreTabPage(),
      );
    },
    ChatTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
  };
}

/// generated route for
/// [ProfilePageWidget]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfilePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.wmFactory = defaultProfilePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [PhonePageWidget]
class PhoneRoute extends PageRouteInfo<PhoneRouteArgs> {
  PhoneRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultPhonePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          PhoneRoute.name,
          args: PhoneRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const PageInfo<PhoneRouteArgs> page = PageInfo<PhoneRouteArgs>(name);
}

class PhoneRouteArgs {
  const PhoneRouteArgs({
    this.key,
    this.wmFactory = defaultPhonePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'PhoneRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [HomePageWidget]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPageWidget]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.wmFactory = defaultAuthPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ChatListPageWidget]
class ChatListRoute extends PageRouteInfo<ChatListRouteArgs> {
  ChatListRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultChatListPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ChatListRoute.name,
          args: ChatListRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const PageInfo<ChatListRouteArgs> page =
      PageInfo<ChatListRouteArgs>(name);
}

class ChatListRouteArgs {
  const ChatListRouteArgs({
    this.key,
    this.wmFactory = defaultChatListPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ChatListRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [SearchPageWidget]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultSearchPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.wmFactory = defaultSearchPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CodePageWidget]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCodePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CodeRoute.name,
          args: CodeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CodeRoute';

  static const PageInfo<CodeRouteArgs> page = PageInfo<CodeRouteArgs>(name);
}

class CodeRouteArgs {
  const CodeRouteArgs({
    this.key,
    this.wmFactory = defaultCodePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CodeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ExplorePageWidget]
class ExploreRoute extends PageRouteInfo<ExploreRouteArgs> {
  ExploreRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultExplorePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ExploreRoute.name,
          args: ExploreRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const PageInfo<ExploreRouteArgs> page =
      PageInfo<ExploreRouteArgs>(name);
}

class ExploreRouteArgs {
  const ExploreRouteArgs({
    this.key,
    this.wmFactory = defaultExplorePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ExploreRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [SearchTabPage]
class SearchTab extends PageRouteInfo<void> {
  const SearchTab({List<PageRouteInfo>? children})
      : super(
          SearchTab.name,
          initialChildren: children,
        );

  static const String name = 'SearchTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExploreTabPage]
class ExploreTab extends PageRouteInfo<void> {
  const ExploreTab({List<PageRouteInfo>? children})
      : super(
          ExploreTab.name,
          initialChildren: children,
        );

  static const String name = 'ExploreTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatTabPage]
class ChatTab extends PageRouteInfo<void> {
  const ChatTab({List<PageRouteInfo>? children})
      : super(
          ChatTab.name,
          initialChildren: children,
        );

  static const String name = 'ChatTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}
