import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_dto.freezed.dart';

part 'photo_dto.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
class PhotoDto with _$PhotoDto {

  factory PhotoDto({
    required String id,
    required String owner,
    required String secret,
    required String server,
    required int farm,
    required String title,
  }) = _PhotoDto;

  factory PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return super.toJson();
  }
}
