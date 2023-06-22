import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flame/page/component/component.dart';
import 'package:flame/page/component/dismissible_card_stack/dismissible_card_stack_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: NamedLogo(
          axis: Axis.horizontal,
          size: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: wm.openProfile,
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: DismissibleCardStackWidget(),
      ),
    );
  }
}
