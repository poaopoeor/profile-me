import 'package:flutter/material.dart';
import 'package:profile_me/mobile/landing_page_mobile.dart';
import 'package:profile_me/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return const LandingPageWeb();
          } else {
            return const LandingPageMobile();
          }
        },
      ),
    );
  }
}
