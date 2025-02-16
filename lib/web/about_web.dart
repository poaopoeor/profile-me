import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/image.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold(text: "Paulina Knop", size: 30.0),
            SizedBox(height: 15.0),
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
            Spacer(flex: 3),
            TabsWeb(title: "Home", route: '/'),
            Spacer(),
            TabsWeb(title: "Works", route: '/works'),
            Spacer(),
            TabsWeb(title: "Blog", route: '/blog'),
            Spacer(),
            TabsWeb(title: "About", route: '/about'),
            Spacer(),
            TabsWeb(title: "Contact", route: '/contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //About me, first section
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "About me", size: 40.0),
                    SizedBox(height: 15.0),
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
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(width: 7.0),
                        tealContainer("Firebase"),
                        SizedBox(width: 7.0),
                        tealContainer("Android"),
                        SizedBox(width: 7.0),
                        tealContainer("Ios"),
                        SizedBox(width: 7.0),
                        tealContainer("Windows"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/profile2-circle.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Web development, second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/webL.png",
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold(text: "Web development", size: 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        text:
                            "I'm here to build your presence online with state of the art web apps",
                        size: 15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          //App development, third section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold(text: "App development", size: 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        text:
                            "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                        size: 15.0),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                width: 250.0,
                height: 250.0,
                reverse: true,
              ),
            ],
          ),
          SizedBox(height: 20.0),

          //Back-end development, second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/firebase.png",
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold(text: "Back-end development", size: 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        text:
                            "Do you want your back-end to highly scalable and secure? Let's have a conversation on how I can help you with that.",
                        size: 15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
