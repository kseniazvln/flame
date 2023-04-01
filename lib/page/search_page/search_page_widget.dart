import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'search_page_wm.dart';

// TODO: cover with documentation
/// Main widget for SearchPage module
@RoutePage()
class SearchPageWidget extends ElementaryWidget<ISearchPageWidgetModel> {
  const SearchPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultSearchPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISearchPageWidgetModel wm) {
    return Container();
  }
}
