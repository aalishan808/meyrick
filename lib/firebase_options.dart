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
    apiKey: 'AIzaSyA7tJKssW_cHoReUUlgi02Jw3uuXfUVhfs',
    appId: '1:30266852610:web:b13a0a1bfa8a1cfa56ae1b',
    messagingSenderId: '30266852610',
    projectId: 'meyrick-70d84',
    authDomain: 'meyrick-70d84.firebaseapp.com',
    storageBucket: 'meyrick-70d84.appspot.com',
    measurementId: 'G-P397PL4212',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWXEKEXUx7mjS7ZfdWi2LjxKcID8GVNRo',
    appId: '1:30266852610:android:a9381f64a916e34f56ae1b',
    messagingSenderId: '30266852610',
    projectId: 'meyrick-70d84',
    storageBucket: 'meyrick-70d84.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSyjA_1kdj9IJJQ4Dxxyekn52oJ9rTlFI',
    appId: '1:30266852610:ios:a204c0fe239b6f6556ae1b',
    messagingSenderId: '30266852610',
    projectId: 'meyrick-70d84',
    storageBucket: 'meyrick-70d84.appspot.com',
    iosClientId: '30266852610-reedgfdcofjp0t8ehof3bl6spfl35qcs.apps.googleusercontent.com',
    iosBundleId: 'com.example.meyrick',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSyjA_1kdj9IJJQ4Dxxyekn52oJ9rTlFI',
    appId: '1:30266852610:ios:2eefc0ea9089e14a56ae1b',
    messagingSenderId: '30266852610',
    projectId: 'meyrick-70d84',
    storageBucket: 'meyrick-70d84.appspot.com',
    iosClientId: '30266852610-m1i4du17v9mm048mteovvsp1a73g35p5.apps.googleusercontent.com',
    iosBundleId: 'com.example.meyrick.RunnerTests',
  );
}
