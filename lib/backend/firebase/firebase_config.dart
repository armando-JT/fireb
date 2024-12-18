import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDVZc3Tyh3-AQceKKZRho7HZLClhGBPeSU",
            authDomain: "fireb-8956kn.firebaseapp.com",
            projectId: "fireb-8956kn",
            storageBucket: "fireb-8956kn.firebasestorage.app",
            messagingSenderId: "1044059727686",
            appId: "1:1044059727686:web:e41c5c62a2862652c32747"));
  } else {
    await Firebase.initializeApp();
  }
}
