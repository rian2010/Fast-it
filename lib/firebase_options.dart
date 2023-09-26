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
    apiKey: 'AIzaSyDhWmj5USq7jIaN089vhRYS4I76xqMelcM',
    appId: '1:348476108874:web:315a0d5b1d557f087076b3',
    messagingSenderId: '348476108874',
    projectId: 'fast-it-cf671',
    authDomain: 'fast-it-cf671.firebaseapp.com',
    storageBucket: 'fast-it-cf671.appspot.com',
    measurementId: 'G-P9JZYD31B5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfqEnS-Ak7sXa0XAJAmTYTVAaCpOsbVPA',
    appId: '1:348476108874:android:5d27aa67a61a724d7076b3',
    messagingSenderId: '348476108874',
    projectId: 'fast-it-cf671',
    storageBucket: 'fast-it-cf671.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFxdNXTM97jijeM5g-zZ6M_sS6jIHnNWs',
    appId: '1:348476108874:ios:5257de7dcf6f4c647076b3',
    messagingSenderId: '348476108874',
    projectId: 'fast-it-cf671',
    storageBucket: 'fast-it-cf671.appspot.com',
    iosBundleId: 'com.example.fastIt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCFxdNXTM97jijeM5g-zZ6M_sS6jIHnNWs',
    appId: '1:348476108874:ios:eeb3114e8631032e7076b3',
    messagingSenderId: '348476108874',
    projectId: 'fast-it-cf671',
    storageBucket: 'fast-it-cf671.appspot.com',
    iosBundleId: 'com.example.fastIt.RunnerTests',
  );
}
