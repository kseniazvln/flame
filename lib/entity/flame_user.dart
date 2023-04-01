import 'package:freezed_annotation/freezed_annotation.dart';

part 'flame_user.freezed.dart';

@freezed
class FlameUser with _$FlameUser {
  factory FlameUser({
    required String name,
  }) = _FlameUser;
}
