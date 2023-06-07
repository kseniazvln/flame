import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/component/theme_switch.dart';
import 'package:flutter/material.dart';
import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: wm.logout,
            child: Center(
              child: Text(
                wm.localizations.phoneLogin,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
