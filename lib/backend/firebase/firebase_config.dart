import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBZPE8m2Fy5s_bW_ecMEBQFYc0dA2j9-QY",
            authDomain: "connectro2-2vk0qy.firebaseapp.com",
            projectId: "connectro2-2vk0qy",
            storageBucket: "connectro2-2vk0qy.firebasestorage.app",
            messagingSenderId: "375841187449",
            appId: "1:375841187449:web:a8f2f3fb7cd0ca873e16a8",
            measurementId: "G-YC4RZ53SY0"));
  } else {
    await Firebase.initializeApp();
  }
}
