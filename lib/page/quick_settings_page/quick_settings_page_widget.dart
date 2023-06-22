import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'quick_settings_page_wm.dart';

// TODO: cover with documentation
/// Main widget for QuickSettingsPage module
@RoutePage()
class QuickSettingsPageWidget extends ElementaryWidget<IQuickSettingsPageWidgetModel> {
  const QuickSettingsPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultQuickSettingsPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IQuickSettingsPageWidgetModel wm) {
    return Container();
  }
}
