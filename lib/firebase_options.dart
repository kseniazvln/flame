// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAMX33c2Anbk25zGRO2Si0-pqXb81DPTfQ',
    appId: '1:618525269996:web:ca84b151bc2febf1b52ac9',
    messagingSenderId: '618525269996',
    projectId: 'flame-5bc56',
    authDomain: 'flame-5bc56.firebaseapp.com',
    storageBucket: 'flame-5bc56.appspot.com',
    measurementId: 'G-NEDC54CTNH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6lJ_8zhFFeliu2QytZ0XbDV7moiRji6I',
    appId: '1:618525269996:android:5a3a2c6fe6b89b42b52ac9',
    messagingSenderId: '618525269996',
    projectId: 'flame-5bc56',
    storageBucket: 'flame-5bc56.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQIKQlveQNM19o15s-mrQBnl528V6lWIM',
    appId: '1:618525269996:ios:e864bf0c2d892d4ab52ac9',
    messagingSenderId: '618525269996',
    projectId: 'flame-5bc56',
    storageBucket: 'flame-5bc56.appspot.com',
    iosBundleId: 'ru.vsu.cs.flame',
  );
}
