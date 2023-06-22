import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'notifications_page_wm.dart';

// TODO: cover with documentation
/// Main widget for NotificationsPage module
@RoutePage()
class NotificationsPageWidget extends ElementaryWidget<INotificationsPageWidgetModel> {
  const NotificationsPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultNotificationsPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(INotificationsPageWidgetModel wm) {
    return Container();
  }
}
