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
    apiKey: 'AIzaSyBTClsDyHVr682rx5k19SEH3vLZ-sCviRg',
    appId: '1:284778815372:web:abe2bb09fcb819a89040a9',
    messagingSenderId: '284778815372',
    projectId: 'wisatabandung-d66b7',
    authDomain: 'wisatabandung-d66b7.firebaseapp.com',
    storageBucket: 'wisatabandung-d66b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpsttheC_XQ0IzsVkDfwp7jVArZC_0HBM',
    appId: '1:284778815372:android:aa997add75d018919040a9',
    messagingSenderId: '284778815372',
    projectId: 'wisatabandung-d66b7',
    storageBucket: 'wisatabandung-d66b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByh-8ETZLMMEJuK_GpzthHYZ5WF2S7m-Q',
    appId: '1:284778815372:ios:f07f04f95f11cf459040a9',
    messagingSenderId: '284778815372',
    projectId: 'wisatabandung-d66b7',
    storageBucket: 'wisatabandung-d66b7.appspot.com',
    iosBundleId: 'com.example.wisataBandung',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByh-8ETZLMMEJuK_GpzthHYZ5WF2S7m-Q',
    appId: '1:284778815372:ios:f07f04f95f11cf459040a9',
    messagingSenderId: '284778815372',
    projectId: 'wisatabandung-d66b7',
    storageBucket: 'wisatabandung-d66b7.appspot.com',
    iosBundleId: 'com.example.wisataBandung',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBTClsDyHVr682rx5k19SEH3vLZ-sCviRg',
    appId: '1:284778815372:web:c1f43da42ebd17ac9040a9',
    messagingSenderId: '284778815372',
    projectId: 'wisatabandung-d66b7',
    authDomain: 'wisatabandung-d66b7.firebaseapp.com',
    storageBucket: 'wisatabandung-d66b7.appspot.com',
  );
}
