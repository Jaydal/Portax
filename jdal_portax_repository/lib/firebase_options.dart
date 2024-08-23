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
    apiKey: 'AIzaSyA5-WNxFrcNLDwbU-RmD7ahuQoPeQZV7Dg',
    appId: '1:291413063042:web:28579d8f4e245bdcf58b9b',
    messagingSenderId: '291413063042',
    projectId: 'portax-e52bd',
    authDomain: 'portax-e52bd.firebaseapp.com',
    storageBucket: 'portax-e52bd.appspot.com',
    measurementId: 'G-Z7EPZZJ9XV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3o7Rph3OuREtBrY6-dLqI3SIgkInGBow',
    appId: '1:291413063042:android:7f0c19dbe9f81c7ef58b9b',
    messagingSenderId: '291413063042',
    projectId: 'portax-e52bd',
    storageBucket: 'portax-e52bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4Eflgz4kiLyaY50CBtCDRgquIrtlvMNs',
    appId: '1:291413063042:ios:281368b69bea29b5f58b9b',
    messagingSenderId: '291413063042',
    projectId: 'portax-e52bd',
    storageBucket: 'portax-e52bd.appspot.com',
    iosBundleId: 'com.junedelmar.portax.ios',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4Eflgz4kiLyaY50CBtCDRgquIrtlvMNs',
    appId: '1:291413063042:ios:e798b644560c0013f58b9b',
    messagingSenderId: '291413063042',
    projectId: 'portax-e52bd',
    storageBucket: 'portax-e52bd.appspot.com',
    iosBundleId: 'com.jundelmar.portax.macos',
  );
}
