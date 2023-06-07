import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/entity/like.dart';

class LikeRepository {
  Future<bool> findMatch(Like like) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('likes')
        .withConverter(
          fromFirestore: (json, _) => Like.fromJson(json.data() ?? {}),
          toFirestore: (l, _) => l.toJson(),
        )
        .where('to', isEqualTo: like.from)
        .where('from', isEqualTo: like.to)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }

  Future<Like> setLike(Like like) async {
    await FirebaseFirestore.instance
        .collection('likes')
        .withConverter(
          fromFirestore: (json, _) => Like.fromJson(json.data() ?? {}),
          toFirestore: (l, _) => l.toJson(),
        )
        .doc('${like.from}${like.to}')
        .set(like);
    return like;
  }

  Stream<List<Like>> getLikes([String? uuid]) {
    final uid = uuid ?? FirebaseAuth.instance.currentUser?.uid;
    return FirebaseFirestore.instance
        .collection('likes')
        .withConverter(
          fromFirestore: (json, _) => Like.fromJson(json.data() ?? {}),
          toFirestore: (l, _) => l.toJson(),
        )
        .where('to', isEqualTo: uid)
        .snapshots()
        .map((q) => q.docs.map((l) => l.data()).toList());
  }

  Stream<int> countLikes({
    String? uuid,
    bool superLike = false,
  }) {
    final uid = uuid ?? FirebaseAuth.instance.currentUser?.uid;
    return FirebaseFirestore.instance
        .collection('likes')
        .withConverter(
          fromFirestore: (json, _) => Like.fromJson(json.data() ?? {}),
          toFirestore: (l, _) => l.toJson(),
        )
        .where('to', isEqualTo: uid)
        .where('superLike', isEqualTo: superLike)
        .snapshots()
        .map((q) => q.size);
  }
}
