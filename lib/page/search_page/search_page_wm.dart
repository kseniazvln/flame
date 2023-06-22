import 'package:elementary/elementary.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_page_model.dart';
import 'search_page_widget.dart';

abstract class ISearchPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void openProfile();
}

SearchPageWidgetModel defaultSearchPageWidgetModelFactory(
    BuildContext context) {
  return SearchPageWidgetModel(SearchPageModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for SearchPageWidget
class SearchPageWidgetModel
    extends WidgetModel<SearchPageWidget, SearchPageModel>
    with ThemeProvider
    implements ISearchPageWidgetModel {
  SearchPageWidgetModel(SearchPageModel model) : super(model);

  @override
  void openProfile() {
    router.navigate(
      const ProfileTab(),
    );
  }
}
