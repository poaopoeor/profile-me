import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                child: Image.asset(
                  'assets/profile2-circle.png',
                  filterQuality: FilterQuality.high,
                ),
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
      body: ListView(
        children: [
          //Intro, First section
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 110.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/image-circle.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold(text: "Hello, I'm", size: 15),
                    ),
                    SansBold(text: "My Name", size: 40.0),
                    Sans(text: 'Flutter developer', size: 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Sans(text: "myname@gmail.com", size: 15.0),
                        Sans(text: "+959 000 000 000", size: 15.0),
                        Sans(text: "10, Inn, Myanmar", size: 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 90.0),
          //About me, Second section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold(text: "About me", size: 35.0),
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
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    tealContainer("Flutter"),
                    tealContainer("Firebase"),
                    tealContainer("Android"),
                    tealContainer("Windows"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 60.0),
          //Third section What I do?
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold(text: "What I do?", size: 35),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web development",
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App development",
                fit: BoxFit.contain,
                reverse: true,
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end development",
                width: 300.0,
              ),
              SizedBox(height: 60),
              //Contact Four section
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansBold(text: "Contact me", size: 35.0),
                  TextForm(
                    text: "First Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please enter your first name",
                  ),
                  TextForm(
                    text: "Email",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please enter your email address",
                  ),
                  TextForm(
                    text: "Last Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please enter your last name",
                  ),
                  TextForm(
                    text: "Phone number",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please enter your phone number",
                  ),
                  TextForm(
                    text: "Message",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type your message",
                    maxLines: 10,
                  ),
                  MaterialButton(
                    elevation: 20.0,
                    height: 60.0,
                    minWidth: widthDevice / 2.2,
                    color: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {},
                    child: SansBold(text: "Submit", size: 20.0),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
