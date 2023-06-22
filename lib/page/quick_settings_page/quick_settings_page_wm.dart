import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quick_settings_page_model.dart';
import 'quick_settings_page_widget.dart';

abstract class IQuickSettingsPageWidgetModel extends IWidgetModel {
}

QuickSettingsPageWidgetModel defaultQuickSettingsPageWidgetModelFactory(BuildContext context) {
  return QuickSettingsPageWidgetModel(
    QuickSettingsPageModel(context.read())
  );
}

// TODO: cover with documentation
/// Default widget model for QuickSettingsPageWidget
class QuickSettingsPageWidgetModel extends WidgetModel<QuickSettingsPageWidget, QuickSettingsPageModel>
    implements IQuickSettingsPageWidgetModel {

  QuickSettingsPageWidgetModel(QuickSettingsPageModel model) : super(model);
}
