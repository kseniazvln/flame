import 'package:freezed_annotation/freezed_annotation.dart';

part 'flame_user.freezed.dart';

part 'flame_user.g.dart';

@freezed
class FlameUser with _$FlameUser {
  factory FlameUser({
    required String id,
    required String name,
    required DateTime birthday,
    required Sex sex,
    required Sex search,
    required Orientation orientation,
    required List<String> pictures,
    required List<String> interests,
    required bool verified,
  }) = _FlameUser;

  factory FlameUser.fromJson(Map<String, dynamic> json) =>
      _$FlameUserFromJson(json);
}

enum Orientation {
  traditional,
  bi,
  lgbtq,
}

enum Sex {
  man,
  women,
  hidden,
}

