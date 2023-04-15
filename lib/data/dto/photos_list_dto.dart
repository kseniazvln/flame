import 'package:flame/data/dto/photo_pagination_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos_list_dto.freezed.dart';
part 'photos_list_dto.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
class PhotosListDto with _$PhotosListDto {
    factory PhotosListDto({
      required PhotoPaginationDto photos,
}) = _PhotosListDto;

    factory PhotosListDto.fromJson(Map<String, dynamic> json) => _$PhotosListDtoFromJson(json);
}