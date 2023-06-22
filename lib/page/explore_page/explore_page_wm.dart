import 'package:elementary/elementary.dart';
import 'package:flame/entity/explore_photo.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flame/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'explore_page_model.dart';
import 'explore_page_widget.dart';

abstract class IExplorePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<ExplorePhoto>> get exploreState;

  void openExplore(ExplorePhoto explorePhoto);
}

ExplorePageWidgetModel defaultExplorePageWidgetModelFactory(
    BuildContext context) {
  return ExplorePageWidgetModel(
    ExplorePageModel(
      errorHandler: context.read(),
      exploreService: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ExplorePageWidget
class ExplorePageWidgetModel
    extends WidgetModel<ExplorePageWidget, ExplorePageModel>
    with ThemeProvider, SnackBarProvider
    implements IExplorePageWidgetModel {
  ExplorePageWidgetModel(ExplorePageModel model) : super(model);

  @override
  final exploreState = EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    exploreState.loading();
    _initExplore();
  }

  Future<void> _initExplore() async {
    try{
      final explore =await model.loadExplore();
      exploreState.content(explore);
    }catch(e){
      showSnackBar('Cant get explore');
    }

  }

  @override
  void dispose() {
    exploreState.dispose();
    super.dispose();
  }

  @override
  void openExplore(ExplorePhoto explorePhoto) {
    router.push(SearchRoute());
  }
}
