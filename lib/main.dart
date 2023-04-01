import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Text('auth'),
            ),
          ],
        ),
      ),
    ),
  );
}

Future<void> login() async {
  FirebaseAuth auth = FirebaseAuth.instance;

  await auth.verifyPhoneNumber(
    phoneNumber: '+7 920 422 75 34',
    timeout: const Duration(seconds: 60),
    codeAutoRetrievalTimeout: (String verificationId) {
      // Auto-resolution timed out...
    },
    verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {},
    verificationFailed: (FirebaseAuthException error) {},
    codeSent: (String verificationId, int? forceResendingToken) {

    },
  );
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
