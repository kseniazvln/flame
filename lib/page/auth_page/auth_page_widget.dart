import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/component/component.dart';
import 'package:flutter/material.dart';
import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPageWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 5,
              child: NamedLogo(),
            ),
            const Spacer(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  wm.localizations.authNotify,
                  textAlign: TextAlign.center,
                  style: wm.textTheme.bodyLarge?.copyWith(
                    color: wm.colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            Flexible(
              child: OutlinedButton(
                onPressed: wm.logIn,
                child: Text(
                  wm.localizations.phoneLogin,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
