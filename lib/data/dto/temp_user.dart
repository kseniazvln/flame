import 'package:flame/entity/flame_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_user.freezed.dart';

part 'temp_user.g.dart';

@freezed
class TempUser with _$TempUser {
  factory TempUser({
    required String id,
    String? name,
    String? bio,
    int? minAge,
    int? maxAge,
    int? age,
    DateTime? birthday,
    Sex? sex,
    Sex? search,
    Orientation? orientation,
    List<String>? pictures,
    List<String>? interests,
    required bool verified,
  }) = _TempUser;

  factory TempUser.fromJson(Map<String, dynamic> json) =>
      _$TempUserFromJson(json);
}
