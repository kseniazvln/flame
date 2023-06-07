import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/data/repository/user_repository.dart';
import 'package:flame/entity/flame_user.dart';

class ProfileService {
  final UserRepository repository;

  ProfileService(this.repository);

  Future<bool> isLoggedIn() async {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<bool> registered() async {
    final user = await repository.getUser();

    return user?.verified ?? false;
  }

  Future<FlameUser?> getUser([String? uuid]) async {
    final user = await repository.getUser(uuid);
    final verified = user?.verified ?? false;

    if (!verified) {
      return null;
    }

    return FlameUser.fromJson(
      user?.toJson() ?? {},
    );
  }
}
