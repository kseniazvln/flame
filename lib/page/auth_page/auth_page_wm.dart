import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/dummy_model.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_page_model.dart';
import 'auth_page_widget.dart';

abstract class IAuthPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void logInWithPhone();

  void logInWithGithub();
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
    with ThemeProvider, SnackBarProvider
    implements IAuthPageWidgetModel {
  AuthPageWidgetModel(AuthPageModel model) : super(model);

  @override
  void logInWithPhone() {
    router.push(PhoneRoute());
  }

  @override
  Future<void> logInWithGithub() async {
    try{
      final user = await model.logInWithGithub();
      router.popUntilRoot();
      router.replace(const HomeRoute());
    }catch(e){
      showSnackBar('Can`t log in');
    }
  }


}
