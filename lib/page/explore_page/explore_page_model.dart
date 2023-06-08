import 'package:elementary/elementary.dart';
import 'package:flame/data/repository/explore_repository.dart';
import 'package:flame/domain/photo_service.dart';
import 'package:flame/entity/explore_photo.dart';

// TODO: cover with documentation
/// Default Elementary model for ExplorePage module
class ExplorePageModel extends ElementaryModel {
  ExplorePageModel({
    super.errorHandler,
    required this.exploreService,
  });

  final PhotoService exploreService;

  Future<List<ExplorePhoto>> loadExplore() async =>
      exploreService.loadExplorePhotos();
}
