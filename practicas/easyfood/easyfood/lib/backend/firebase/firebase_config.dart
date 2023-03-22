import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyATgs_T8BDFCyzlhVaMZ6CJcmmq1WCxkaM",
            authDomain: "easyfood-e802e.firebaseapp.com",
            projectId: "easyfood-e802e",
            storageBucket: "easyfood-e802e.appspot.com",
            messagingSenderId: "362055164785",
            appId: "1:362055164785:web:8bcaa8bfe4b38a44b18cd0",
            measurementId: "G-PSKL0FCKB4"));
  } else {
    await Firebase.initializeApp();
  }
}
