// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAF5xaH1SC_-1M8SlB1ja6csm_j1SL3mzU',
    appId: '1:1004613401189:android:64e9d79da18aff6ba6a48c',
    messagingSenderId: '1004613401189',
    projectId: 're-ink-1871e',
    storageBucket: 're-ink-1871e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlVxTcH6w2t-C8RD9ARCRK8-kEceJdpZ0',
    appId: '1:1004613401189:ios:562335860c6784c3a6a48c',
    messagingSenderId: '1004613401189',
    projectId: 're-ink-1871e',
    storageBucket: 're-ink-1871e.appspot.com',
    iosClientId: '1004613401189-il15ruh2dch1kumn3oo757mjs9abl7dc.apps.googleusercontent.com',
    iosBundleId: 'com.example.reink',
  );
}
