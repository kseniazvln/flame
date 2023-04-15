import 'package:freezed_annotation/freezed_annotation.dart';

import 'photo_dto.dart';

part 'photo_pagination_dto.freezed.dart';
part 'photo_pagination_dto.g.dart';


@Freezed(
  toJson: true,
  fromJson: true,
)
class PhotoPaginationDto with _$PhotoPaginationDto {
  factory PhotoPaginationDto({
    required int page,
    required int pages,
    required int perpage,
    required int total,
    required List<PhotoDto> photo,
  }) = _PhotoPaginationDto;

  factory PhotoPaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoPaginationDtoFromJson(json);
}
