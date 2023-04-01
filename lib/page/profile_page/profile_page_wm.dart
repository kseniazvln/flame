import 'package:elementary/elementary.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract class IProfilePageWidgetModel extends IWidgetModel implements IThemeProvider {
  void logout();
}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(BuildContext context) {
  return ProfilePageWidgetModel(ProfilePageModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for ProfilePageWidget
class ProfilePageWidgetModel extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    with ThemeProvider
    implements IProfilePageWidgetModel {

  ProfilePageWidgetModel(ProfilePageModel model) : super(model);

  @override
  Future<void> logout()  async{
    model.logout();
    router.replace(AuthRoute());
  }
}
