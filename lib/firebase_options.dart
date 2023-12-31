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
    apiKey: 'AIzaSyCE3uqd4qYpC_Bl2YCdSykOzoCBQL39QMI',
    appId: '1:126336993161:web:b7a4f7657318d28b9f0358',
    messagingSenderId: '126336993161',
    projectId: 'flutter-firebase-test-7cbed',
    authDomain: 'flutter-firebase-test-7cbed.firebaseapp.com',
    storageBucket: 'flutter-firebase-test-7cbed.appspot.com',
    measurementId: 'G-D8BPBMVZ1B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3F3SZfM2Vn8Le58gV0zJ65fSKLcAFBts',
    appId: '1:126336993161:android:3f3b7d99763bc8a19f0358',
    messagingSenderId: '126336993161',
    projectId: 'flutter-firebase-test-7cbed',
    storageBucket: 'flutter-firebase-test-7cbed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMnVbbojAKr8Nh3sCDZ-8-CRJ_CHZXUNs',
    appId: '1:126336993161:ios:c8dc865862d9d3879f0358',
    messagingSenderId: '126336993161',
    projectId: 'flutter-firebase-test-7cbed',
    storageBucket: 'flutter-firebase-test-7cbed.appspot.com',
    iosClientId: '126336993161-jkagenbthbpbaomc28m3m3jrn0l5d1os.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetest',
  );
}
