// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD8LMK305RLu3JNnGYkA6gJ5oFHWKSxgRk',
    appId: '1:1007233150184:web:e59a394857e667abb56d5d',
    messagingSenderId: '1007233150184',
    projectId: 'fir-todo-1250f',
    authDomain: 'fir-todo-1250f.firebaseapp.com',
    storageBucket: 'fir-todo-1250f.appspot.com',
    measurementId: 'G-QFBLXV1VMC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdPNW0QGmwpPcI46IDOZZK8b5QcZ8gV1Y',
    appId: '1:1007233150184:android:eb845d0be6f986fdb56d5d',
    messagingSenderId: '1007233150184',
    projectId: 'fir-todo-1250f',
    storageBucket: 'fir-todo-1250f.appspot.com',
  );
}
