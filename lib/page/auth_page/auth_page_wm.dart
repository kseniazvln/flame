import 'package:elementary/elementary.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_page_model.dart';
import 'auth_page_widget.dart';

abstract class IAuthPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void logIn();
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(
    AuthPageModel(
      context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for AuthPageWidget
class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    with ThemeProvider
    implements IAuthPageWidgetModel {
  AuthPageWidgetModel(AuthPageModel model) : super(model);

  @override
  void logIn() {
    // TODO: implement logIn
  }
}
