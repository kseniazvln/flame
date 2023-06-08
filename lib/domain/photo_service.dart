import 'package:flame/data/repository/explore_repository.dart';
import 'package:flame/data/service/api_client.dart';
import 'package:flame/entity/explore.dart';
import 'package:flame/entity/explore_photo.dart';

class PhotoService {
  final ApiService apiService;
  final ExploreRepository exploreRepository;

  PhotoService({
    required this.exploreRepository,
    required this.apiService,
  });

  Future<List<ExplorePhoto>> loadExplorePhotos() async {
    final items = await exploreRepository.getItems();
    final images = <ExplorePhoto>[];
    for (final item in items) {
      final url = await _buildUrl(item);
      if (url == null) {
        continue;
      }
      images.add(
        ExplorePhoto(
          name: item.name,
          url: url,
        ),
      );
    }

    return images;
  }

  Future<String?> _buildUrl(ExploreItem item) async {
    final images = await apiService.authEmailPart1(
      method: 'flickr.photos.search',
      apiKey: '0b190e98562a1b7fde2763ee4d0a1c64',
      text: item.name,
      format: 'json',
      noJsonCallback: 1,
    );

    final image = images.photos.photo.firstOrNull;

    if (image == null) {
      return null;
    }

    final url = 'http://farm${image.farm}.staticflickr.com'
        '/${image.server}/${image.id}_${image.secret}.jpg';

    return url;
  }
}
