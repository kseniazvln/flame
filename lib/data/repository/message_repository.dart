import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/entity/message.dart';

class MessageRepository {
  Future<void> postMessage(Message message) async {
    await FirebaseFirestore.instance
        .collection('messages')
        .withConverter(
          fromFirestore: (json, _) => Message.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .doc(message.id)
        .set(message);
  }

  Future<Message?> getLastMessage(String chatId) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('messages')
        .withConverter(
          fromFirestore: (json, _) => Message.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .where('chatId', isEqualTo: chatId)
        .get();

    return (querySnapshot).docs.firstOrNull?.data();
  }

  Stream<List<Message>> getMessages(String chatId) {
    return FirebaseFirestore.instance
        .collection('messages')
        .withConverter(
          fromFirestore: (json, _) => Message.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .where('chatId', isEqualTo: chatId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((q) => q.docs.map((c) => c.data()).toList());
  }

  Stream<List<Message>> getAllUnReadMessages() {
    final uuid = FirebaseAuth.instance.currentUser?.uid;

    return FirebaseFirestore.instance
        .collection('messages')
        .withConverter(
          fromFirestore: (json, _) => Message.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .where('to', isEqualTo: uuid)
        .where('viewed', isEqualTo: true)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((q) => q.docs.map((c) => c.data()).toList());
  }
}
