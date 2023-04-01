import 'package:auto_route/auto_route.dart';
import 'package:flame/l10n/generated/app_localizations.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO: cover with documentation
/// Main widget for HomePage module
@RoutePage()
class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return AutoTabsScaffold(
      routes: const [
        SearchTab(),
        ExploreTab(),
        ChatTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final theme = Theme.of(context);
        return CupertinoTabBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_fire_department_outlined,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.route_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
            ),
          ],
        );
      },
    );
  }
}
