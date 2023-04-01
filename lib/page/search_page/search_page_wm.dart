import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_page_model.dart';
import 'search_page_widget.dart';

abstract class ISearchPageWidgetModel extends IWidgetModel {
}

SearchPageWidgetModel defaultSearchPageWidgetModelFactory(BuildContext context) {
  return SearchPageWidgetModel(context.read());
}

// TODO: cover with documentation
/// Default widget model for SearchPageWidget
class SearchPageWidgetModel extends WidgetModel<SearchPageWidget, SearchPageModel>
    implements ISearchPageWidgetModel {

  SearchPageWidgetModel(SearchPageModel model) : super(model);
}
