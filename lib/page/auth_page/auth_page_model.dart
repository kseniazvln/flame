import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

// TODO: cover with documentation
/// Default Elementary model for AuthPage module
class AuthPageModel extends ElementaryModel {
  AuthPageModel(ErrorHandler errorHandler) : super(errorHandler: errorHandler);


  Future<UserCredential> logInWithGithub() async {
    // Create a new provider
    final githubProvider = GithubAuthProvider();

    if (kIsWeb) {
      return await FirebaseAuth.instance.signInWithPopup(githubProvider);
    }

    return await FirebaseAuth.instance.signInWithProvider(githubProvider);

    // FirebaseAuth.instance.currentUser.email';
  }
}
