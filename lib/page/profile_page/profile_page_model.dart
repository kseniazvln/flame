import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';

// TODO: cover with documentation
/// Default Elementary model for ProfilePage module
class ProfilePageModel extends ElementaryModel {
  ProfilePageModel(ErrorHandler errorHandler) : super(errorHandler: errorHandler);

  Future<void> logout() async {
    FirebaseAuth.instance.signOut();
  }
}
