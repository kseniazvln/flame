import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'explore_page_model.dart';
import 'explore_page_widget.dart';

abstract class IExplorePageWidgetModel extends IWidgetModel {
}

ExplorePageWidgetModel defaultExplorePageWidgetModelFactory(BuildContext context) {
  return ExplorePageWidgetModel(context.read());
}

// TODO: cover with documentation
/// Default widget model for ExplorePageWidget
class ExplorePageWidgetModel extends WidgetModel<ExplorePageWidget, ExplorePageModel>
    implements IExplorePageWidgetModel {

  ExplorePageWidgetModel(ExplorePageModel model) : super(model);
}
