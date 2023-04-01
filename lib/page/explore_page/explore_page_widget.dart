import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'explore_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ExplorePage module
class ExplorePageWidget extends ElementaryWidget<IExplorePageWidgetModel> {
  const ExplorePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultExplorePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IExplorePageWidgetModel wm) {
    return Container();
  }
}
