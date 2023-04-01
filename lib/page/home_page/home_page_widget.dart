import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'home_page_wm.dart';

// TODO: cover with documentation
/// Main widget for HomePage module
@RoutePage()
class HomePageWidget extends ElementaryWidget<IHomePageWidgetModel> {
  const HomePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomePageWidgetModel wm) {
    return Container();
  }
}
