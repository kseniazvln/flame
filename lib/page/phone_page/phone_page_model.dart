import 'package:elementary/elementary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/domain/profile_service.dart';
import 'package:flame/internal/logger.dart';
import 'package:flutter/foundation.dart';

// TODO: cover with documentation
/// Default Elementary model for PhonePage module
class PhonePageModel extends ElementaryModel {
  PhonePageModel(
    ErrorHandler errorHandler,
    this.profileService,
  ) : super(errorHandler: errorHandler);

  final ProfileService profileService;

  Future<bool> registered() async => profileService.registered();

  Future<void> login({
    required String phone,
    required AsyncValueGetter<String?> codeProvider,
    required void Function(bool, [Object?]) onResult,
  }) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (e) {},
      verificationFailed: (e) {
        handleError(e);
        onResult(false, e);
      },
      codeSent: (verificationId, resendToken) async {
        final smsCode = await codeProvider();

        if (smsCode != null) {
          // Create a PhoneAuthCredential with the code
          final credential = PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode: smsCode,
          );

          try {
            // Sign the user in (or link) with the credential
            await FirebaseAuth.instance.signInWithCredential(credential);
            onResult(true);
          } on FirebaseAuthException catch (e, stackTrace) {
            handleError(e, stackTrace: stackTrace);
          }
        }
      },
      codeAutoRetrievalTimeout: (e) {
        handleError(
          e,
        );
      },
    );
  }
}
