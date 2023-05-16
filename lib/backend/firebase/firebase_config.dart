import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCa8e6LpJEpMbp5VvS-0R0Kq2UrRPzqebc",
            authDomain: "farmaciacolonialbd.firebaseapp.com",
            projectId: "farmaciacolonialbd",
            storageBucket: "farmaciacolonialbd.appspot.com",
            messagingSenderId: "268280592465",
            appId: "1:268280592465:web:5b58f2d62f2658d9026070",
            measurementId: "G-ZE4GSP241M"));
  } else {
    await Firebase.initializeApp();
  }
}
