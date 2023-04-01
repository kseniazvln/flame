import 'package:firebase_auth/firebase_auth.dart';

class ProfileService {
  Future<bool> isLoggedIn() async {
    return FirebaseAuth.instance.currentUser != null;
  }
}
