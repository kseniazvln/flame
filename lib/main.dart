import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flame/internal/app.dart';
import 'package:flame/internal/app_dependency.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FirebaseAuth.instance.useAuthEmulator("127.0.0.1", 9099);

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
