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
    apiKey: 'AIzaSyDs2ntWDIzvaNdAgwfgFM2EfP2nJeYJpOg',
    appId: '1:989101463926:web:a1a4855f0a7126ae458257',
    messagingSenderId: '989101463926',
    projectId: 'egme-investigation-b2de6',
    authDomain: 'egme-investigation-b2de6.firebaseapp.com',
    storageBucket: 'egme-investigation-b2de6.appspot.com',
    measurementId: 'G-14LLD2MBTZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF7xSaLZrrecACzburAnALKBywepdOgiQ',
    appId: '1:989101463926:android:df0e6fbb946b9dac458257',
    messagingSenderId: '989101463926',
    projectId: 'egme-investigation-b2de6',
    storageBucket: 'egme-investigation-b2de6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnJMBdgBYjhsjWdUWzati6gg3Ng_AVj2Y',
    appId: '1:989101463926:ios:e48fa27be189b428458257',
    messagingSenderId: '989101463926',
    projectId: 'egme-investigation-b2de6',
    storageBucket: 'egme-investigation-b2de6.appspot.com',
    iosBundleId: 'com.example.egmeInvestigation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnJMBdgBYjhsjWdUWzati6gg3Ng_AVj2Y',
    appId: '1:989101463926:ios:b54370c841c6c707458257',
    messagingSenderId: '989101463926',
    projectId: 'egme-investigation-b2de6',
    storageBucket: 'egme-investigation-b2de6.appspot.com',
    iosBundleId: 'com.example.egmeInvestigation.RunnerTests',
  );
}