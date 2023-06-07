import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/entity/chat.dart';

class ChatRepository {
  Future<void> createChat(Chat chat) async {
    await FirebaseFirestore.instance
        .collection('chats')
        .withConverter(
          fromFirestore: (json, _) => Chat.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .doc(chat.chatId)
        .set(chat);
  }

  Stream<List<Chat>> getChats(){
    final uid = FirebaseAuth.instance.currentUser?.uid;

    return FirebaseFirestore.instance
        .collection('chats')
        .withConverter(
          fromFirestore: (json, _) => Chat.fromJson(json.data() ?? {}),
          toFirestore: (c, _) => c.toJson(),
        )
        .where('participant', arrayContains: uid)
        .snapshots()
        .map((q) => q.docs.map((c) => c.data()).toList());
  }
}
