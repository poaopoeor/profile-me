import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: "Home"),
            Spacer(),
            TabsWeb(title: "Works"),
            Spacer(),
            TabsWeb(title: "Blog"),
            Spacer(),
            TabsWeb(title: "About"),
            Spacer(),
            TabsWeb(title: "Contact"),
            Spacer(),
          ],
        ),
      ),
      body: const CircleAvatar(
        radius: 103.0,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("assets/image-circle.png"),
        ),
      ),
    );
  }
}
