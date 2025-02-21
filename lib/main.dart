import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_me/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBy5YJNgp1PW1dy9Q4fBCisw0V8ighysxA",
          authDomain: "profile-me-1d839.firebaseapp.com",
          projectId: "profile-me-1d839",
          storageBucket: "profile-me-1d839.firebasestorage.app",
          messagingSenderId: "964265908584",
          appId: "1:964265908584:web:89bd13a29ff49ed9b6dedd",
          measurementId: "G-CK0J34WK9X"),
    );
  } else {
    GoogleFonts.config.allowRuntimeFetching=false;
    await Firebase.initializeApp();
  }


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
