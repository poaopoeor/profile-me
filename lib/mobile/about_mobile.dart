import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset('assets/profile2-circle.png'),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher("assets/instagram.svg", "https://instagram.com"),
                  urlLauncher("assets/twitter.svg", "https://x.com"),
                  urlLauncher("github.svg", "https://github.com"),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              //Introduction, first section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/profile2-circle.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "About me", size: 35.0),
                    SizedBox(height: 10.0),
                    Sans(
                        text:
                            "Hello, I'm myname I specialize in flutter development",
                        size: 15.0),
                    Sans(
                        text:
                            "I strive to ensure astounding performance with state of",
                        size: 15.0),
                    Sans(
                        text:
                            "the art security for Android, Ios, Web, Mac, Linux and Windows",
                        size: 15.0),
                    SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("Android"),
                        tealContainer("Ios"),
                        tealContainer("Windows"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              //Web development, second section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/webL.png",
                    text: "Web development",
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold(text: "web development", size: 20.0),
                  SizedBox(height: 20.0),
                ],
              ),
              Sans(
                  text:
                      "I'm here to build your presence online with state of the art web apps",
                  size: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    text: "App development",
                    fit: BoxFit.contain,
                    reverse: true,
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold(text: "App development", size: 20.0),
                  SizedBox(height: 10.0)
                ],
              ),
              Sans(
                  text:
                      "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                  size: 15.0),

              //Back end development, forth section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    text: "App development",
                    fit: BoxFit.contain,
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold(text: "Back-end development", size: 20.0),
                  SizedBox(height: 10.0)
                ],
              ),
              Sans(
                  text:
                      "Do you want your back-end to highly scalable and secure? Let's have a conversation on how I can help you with that.",
                  size: 15.0),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
