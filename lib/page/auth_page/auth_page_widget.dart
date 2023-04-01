import 'package:elementary/elementary.dart';
import 'package:flame/page/component/component.dart';
import 'package:flutter/material.dart';
import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Flexible(
              flex: 5,
              child: NamedLogo(),
            ),
            Flexible(
              child: Text(
                wm.localizations.authNotify,
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
