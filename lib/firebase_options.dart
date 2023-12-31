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
        return macos;
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
    apiKey: 'AIzaSyDvRhmPAGnGX_0LWwfZjMZonGqb4I7PgKo',
    appId: '1:186705958212:web:896f03bb20a41285573311',
    messagingSenderId: '186705958212',
    projectId: 'news-app-13eee',
    authDomain: 'news-app-13eee.firebaseapp.com',
    storageBucket: 'news-app-13eee.appspot.com',
    measurementId: 'G-SPT9DSEHMH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDi7Ptadlu9W71x-jgZ4J9JG-pfCRsBY_Q',
    appId: '1:186705958212:android:4d0fe6286e27da32573311',
    messagingSenderId: '186705958212',
    projectId: 'news-app-13eee',
    storageBucket: 'news-app-13eee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKYPUUtO5WsMqaagtlEHwyivwnJHS_EQc',
    appId: '1:186705958212:ios:ecf91c60c79b7f6b573311',
    messagingSenderId: '186705958212',
    projectId: 'news-app-13eee',
    storageBucket: 'news-app-13eee.appspot.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKYPUUtO5WsMqaagtlEHwyivwnJHS_EQc',
    appId: '1:186705958212:ios:24b7b37711779c71573311',
    messagingSenderId: '186705958212',
    projectId: 'news-app-13eee',
    storageBucket: 'news-app-13eee.appspot.com',
    iosBundleId: 'com.example.project.RunnerTests',
  );
}
