import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flame/entity/explore.dart';

class ExploreRepository {
  Future<List<ExploreItem>> getItems() async {
    final doc = await FirebaseFirestore.instance
        .collection('explore')
        .withConverter(
          fromFirestore: (json, _) => ExploreItem.fromJson(json.data() ?? {}),
          toFirestore: (u, _) => u.toJson(),
        )
        .get();

    return doc.docs.map((e) => e.data()).toList();
  }
}
