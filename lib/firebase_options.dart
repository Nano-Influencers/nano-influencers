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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCgGNNEtmU5ZDZFsNbGMpRO5TSY_fL8wmU',
    appId: '1:881328477265:web:ddd3979fd0d79742101470',
    messagingSenderId: '881328477265',
    projectId: 'nano-influencers',
    authDomain: 'nano-influencers.firebaseapp.com',
    storageBucket: 'nano-influencers.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJrPoW2JlJi4uttiLNq4kxBXl8IvZvaGM',
    appId: '1:146021842645:android:9efafe273b405e2215ac5c',
    messagingSenderId: '146021842645',
    projectId: 'the-nano-influencers',
    storageBucket: 'the-nano-influencers.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKEnjNn-QbqD7ptBPvdntTF7hpvvOwXiU',
    appId: '1:146021842645:ios:3eef6c537465342f15ac5c',
    messagingSenderId: '146021842645',
    projectId: 'the-nano-influencers',
    storageBucket: 'the-nano-influencers.appspot.com',
    iosBundleId: 'com.example.nanoInfluencers',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKEnjNn-QbqD7ptBPvdntTF7hpvvOwXiU',
    appId: '1:146021842645:ios:3eef6c537465342f15ac5c',
    messagingSenderId: '146021842645',
    projectId: 'the-nano-influencers',
    storageBucket: 'the-nano-influencers.appspot.com',
    iosBundleId: 'com.example.nanoInfluencers',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWnColJOJcVYpytl_sV7C3rCw7N5XjPok',
    appId: '1:146021842645:web:95eb1836c5dee99d15ac5c',
    messagingSenderId: '146021842645',
    projectId: 'the-nano-influencers',
    authDomain: 'the-nano-influencers.firebaseapp.com',
    storageBucket: 'the-nano-influencers.appspot.com',
    measurementId: 'G-81EJ5S53DM',
  );
}