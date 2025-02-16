import 'package:flutter/material.dart';
import 'package:profile_me/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
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
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold(text: "Contact me", size: 40),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                        text: "First Name",
                        containerWidth: 350,
                        hintText: "Please enter your first name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        text: "Email",
                        containerWidth: 350,
                        hintText: "Please enter your email address",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                        text: "Last Name",
                        containerWidth: 350,
                        hintText: "Please enter your last name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        text: "Phone number",
                        containerWidth: 350,
                        hintText: "Please enter your phone number",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              TextForm(
                text: "Message",
                containerWidth: widthDevice / 1.5,
                hintText: "Please type your message",
                maxLines: 10,
              ),
              SizedBox(height: 20.0),
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
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
