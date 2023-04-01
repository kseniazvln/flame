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
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePageWidget(
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
/// [HomePageWidget]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultHomePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = defaultHomePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
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
