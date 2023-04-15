import 'package:freezed_annotation/freezed_annotation.dart';

part 'like.freezed.dart';

part 'like.g.dart';

@freezed
class Like with _$Like {
  factory Like({
    required String from,
    required String to,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}
