import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifications_page_model.dart';
import 'notifications_page_widget.dart';

abstract class INotificationsPageWidgetModel extends IWidgetModel {
}

NotificationsPageWidgetModel defaultNotificationsPageWidgetModelFactory(BuildContext context) {
  return NotificationsPageWidgetModel(NotificationsPageModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for NotificationsPageWidget
class NotificationsPageWidgetModel extends WidgetModel<NotificationsPageWidget, NotificationsPageModel>
    implements INotificationsPageWidgetModel {

  NotificationsPageWidgetModel(NotificationsPageModel model) : super(model);
}
