import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_photo.freezed.dart';
part 'explore_photo.g.dart';

@freezed
class ExplorePhoto with _$ExplorePhoto {
    factory ExplorePhoto({
      required String name,
      required String url,
}) = _ExplorePhoto;

    factory ExplorePhoto.fromJson(Map<String, dynamic> json) => _$ExplorePhotoFromJson(json);
}