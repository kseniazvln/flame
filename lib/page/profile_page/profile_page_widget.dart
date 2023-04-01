import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    return Container();
  }
}
