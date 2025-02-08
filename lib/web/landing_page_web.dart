import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_me/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
      body: ListView(
        children: [
          //First section
          SizedBox(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold(text: "Hello, I'm", size: 15),
                    ),
                    SizedBox(height: 15.0),
                    SansBold(text: "My Name", size: 55.0),
                    Sans(text: 'Flutter developer', size: 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans(text: "myname@gmail.com", size: 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans(text: "+959 000 000 000", size: 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans(text: "10, Inn, Myanmar", size: 15.0)
                      ],
                    ),
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
                      backgroundImage: AssetImage("assets/image-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Second section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg", height: widthDevice / 1.9),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold(text: "About me", size: 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                        text:
                            "Hello, I'm myname I specialize in flutter development",
                        size: 15),
                    Sans(
                        text:
                            "I strive to ensure astounding performance with state of",
                        size: 15),
                    Sans(
                        text:
                            "the art security for Android, Ios, Web, Mac, Linux and Windows",
                        size: 15),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(text: "Flutter", size: 15),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(text: "Firebase", size: 15),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(text: "Android", size: 15),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(text: "Ios", size: 15),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(text: "Windows", size: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(text: "What I do?", size: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    )
                  ],
                )
              ],
            ),
          ),
          //Four section
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(text: "Contact me", size: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          width: 350,
                          hintText: "Please enter your first name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          width: 350,
                          hintText: "Please enter your email address",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          width: 350,
                          hintText: "Please enter your last name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone number",
                          width: 350,
                          hintText: "Please enter your phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  child: SansBold(text: "Submit", size: 20.0),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconButton urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPath,
        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        width: 35.0,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
}
