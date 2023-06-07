import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/data/dto/temp_user.dart';
import 'package:flame/entity/flame_user.dart';

class UserRepository {
  Future<TempUser?> getUser([String? uuid]) async {
    final uid = uuid ?? FirebaseAuth.instance.currentUser?.uid;
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .withConverter(
          fromFirestore: (json, _) => TempUser.fromJson(json.data() ?? {}),
          toFirestore: (u, _) => u.toJson(),
        )
        .doc(uid)
        .get();

    return doc.data();
  }

  Future<FlameUser> saveUser(FlameUser flameUser) async {
    await FirebaseFirestore.instance
        .collection('users')
        .withConverter(
          fromFirestore: (json, _) => FlameUser.fromJson(json.data() ?? {}),
          toFirestore: (u, _) => u.toJson(),
        )
        .doc(flameUser.id)
        .set(flameUser);

    return flameUser;
  }

  Future<List<FlameUser>> getUsers({
    required Sex sex,
    required Sex search,
    required (int, int) ageRange,
    List<String> interests = const [],
  }) async {
    final (min, max) = ageRange;
    var snap = FirebaseFirestore.instance
        .collection('users')
        .withConverter(
          fromFirestore: (json, _) => FlameUser.fromJson(json.data() ?? {}),
          toFirestore: (u, _) => u.toJson(),
        )
        .where('verified', isEqualTo: true)
        .where('age', isGreaterThanOrEqualTo: min)
        .where('age', isLessThanOrEqualTo: max)
        .where('sex', isEqualTo: search.name)
        .where('search', isEqualTo: sex.name);

    if (interests.isNotEmpty) {
      snap = snap.where('interests', arrayContainsAny: interests);
    }

    return (await snap.get()).docs.map((d) => d.data()).toList();
  }

  Stream<FlameUser?> getUserStream([String? uuid]) {
    final uid = uuid ?? FirebaseAuth.instance.currentUser?.uid;

    return FirebaseFirestore.instance
        .collection('users')
        .withConverter(
          fromFirestore: (json, _) => FlameUser.fromJson(json.data() ?? {}),
          toFirestore: (u, _) => u.toJson(),
        )
        .doc(uid)
        .snapshots()
        .map((u) => u.data());
  }
}
